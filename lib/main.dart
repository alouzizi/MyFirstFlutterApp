import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lerninig/images.dart';
import 'package:gallery_saver/gallery_saver.dart';

import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

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
      home: const WallpaperList(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class WallpaperList extends StatelessWidget {
  const WallpaperList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wallpapers'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: CachedNetworkImage(
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
        imageUrl: widget.imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _saveNetworkImage(widget.imageUrl);
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  void _saveNetworkImage(String Uri) async {
    GallerySaver.saveImage(Uri);
  }
}
