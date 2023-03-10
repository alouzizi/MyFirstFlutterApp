
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lerninig/images.dart';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:lerninig/main.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

BannerAd? bannerAd;
bool isLoaded = false;
InterstitialAd? interstitalAd;
String? interstital;
String? banner;
int bstate = 0;
String? istate = "ok";
bool isloaded = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}


Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://drive.google.com/uc?export=download&id=1zEwONBKfuVJvnRN46RjKZtK1l7gxmYeR'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final album = Album(
      bstate: jsonData['bstate'],
      istate: jsonData['istate'],
      images: jsonData['images'],
      banner: jsonData['banner'],
      
      interstital: jsonData['interstitial'],
    );
    list.clear();
    bstate = album.bstate;
    istate = album.istate;
    list = album.images;
    interstital = album.interstital;
    banner = album.banner;
    print("\n\n**************************************************\n\n");
    print(album.istate);
  //  print(album.bstate);
  //  for (var i = 0; i < album.images.length; i++) {
  //     print(album.images[i]);
  //     print(i);
  //   }

    print(album.banner);
    print(album.interstital);
    print("\n\n**************************************************\n\n");
    return album;
  }
  else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int bstate;
  final String? istate;
  final List<dynamic> images;
  final String ?banner;
  final String ?interstital;

  const Album({
    required this.bstate,
    required this.istate,
    required this.images,
    required this.banner,
    required this.interstital,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      bstate: json['bstate'],
      istate: json['istate'],
      images: json['images'],
      banner: json['banner'],
      interstital: json['interstital'],
    );
  }
}

_initBannerAd() {
  bannerAd = BannerAd(
    size: AdSize.banner,
    adUnitId: banner.toString(),
    listener: BannerAdListener(
      onAdLoaded: (ad) {
        isLoaded = true;
      },
      onAdFailedToLoad: (ad, error) {},
    ),
    request: const AdRequest(),
  );
  bannerAd!.load();
}

_initInterstitialAd() {
  InterstitialAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          isloaded = true;
          interstitalAd = ad;
    print(interstital);
        },
        onAdFailedToLoad: (error) {
          print("error");
        },
      ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "walpaper",
      home: const Splash(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class WallpaperList extends StatefulWidget {
  
  const WallpaperList({super.key});

  @override
  State<WallpaperList> createState() => _WallpaperListState();
}

class _WallpaperListState extends State<WallpaperList> {
  // @override
  late String s;
  @override
  void initState() {
    super.initState();
    // loadBuyedItems();
  //  fetchAlbum();
    if(istate == null)
      _initInterstitialAd();
    fetchAlbum();
    
    // album.
    //print(s);
    // if(bstate == true)
    //   _initBannerAd();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            SizedBox(
              height: 25,
              width: 30,
              child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 28, 0, 69),
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrivacyPolicyWidget(),
                    ),
                  );
                }),
                child: Icon(Icons.privacy_tip_outlined),
              ),
            )
          ],
          title: const Text(
            'Wallpapers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 28, 0, 69),
          elevation: 0.0,
          brightness: Brightness.dark,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff0e0023),
                Color(0xff3a1e54),
              ],
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: MasonryGridView.count(
            itemCount: list.length,
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenImage(list[index]),
                      ),
                    );
                    // if(index%2 == 0)
                    interstitalAd!.show();
                    if(istate != null)
                      _initInterstitialAd();
                  },
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: list[index],
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ));
            },
          ),
        ));
  }
}

class FullScreenImage extends StatefulWidget {
  final String imageUrl;
  const FullScreenImage(this.imageUrl, {super.key});
  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  // add this method
  void _getHttp() async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Loading'),
      ),
    );
    var response = await Dio().get(widget.imageUrl,
        options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 80,
        name: "hello");
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Download is done'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          child: CachedNetworkImage(
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            imageUrl: widget.imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => const SizedBox(
                height: 40,
                width: 40,
                child: Center(child: CircularProgressIndicator())),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
            top: 45,
            left: 20,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          interstitalAd!.show();
          if(istate != null)
            _initInterstitialAd();
          _getHttp();
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
/////////////////////////////////////////////////////////

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _Splash createState() => _Splash();
}

// void loadBuyedItems() async {
//   final prefs = await SharedPreferences.getInstance();
//   final aprefs = await SharedPreferences.getInstance();
//   s = prefs.getString('alla');
//   dl = aprefs.getBool('dark');
//   if (dl == true) {
//     dark = Colors.black;
//     dark2 = Colors.white;
//   } else {
//     dark = const Color.fromARGB(255, 255, 255, 255);
//     dark2 = const Color.fromARGB(255, 0, 0, 0);
//   }
// }

class _Splash extends State<Splash> {
  @override
  void initState() {
    super.initState();
    //  loadBuyedItems();
    // LoadData();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WallpaperList()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'welcome',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                child: const CircularProgressIndicator(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              // Text(
              //   'Privacy Policy',
              //   style: TextStyle(
              //     fontSize: 24.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(height: 20.0),
              // Main Text
              Text(s),
            ],
          ),
        ),
      ),
    );
  }
}
