import 'package:flutter/material.dart';
import 'package:lerninig/main.dart';
List<dynamic> list = [
'https://drive.google.com/uc?export=view&id=1i6NVxRIsSByGG18mi9IGQVRK0sJ3cS0E',
'https://drive.google.com/uc?export=view&id=1f_yVN3ipgusCucbqL2tzJRCFDSlf2Kae',
'https://drive.google.com/uc?export=view&id=1bAfWU8PBO2mkBFGxTkBDS5_RQUZ6UleJ',
'https://drive.google.com/uc?export=view&id=1S1HaBbJ-hpDvVhC2SXKFw9z8TTDE8saK',
'https://drive.google.com/uc?export=view&id=1dpYxkXBJTGsYk9N9ed5R2La5HlTveTKu',
'https://drive.google.com/uc?export=view&id=1ecVU7ERk4SZUaYXQdgoMwWdhRsoWPcsE',
'https://drive.google.com/uc?export=view&id=1XP_4Xj_Oe5ZWdK-AVWtho2dWko8BVbTT',
'https://drive.google.com/uc?export=view&id=1aFZi0uWumDtuRtdLETUSD4W727VuwGt3',
'https://drive.google.com/uc?export=view&id=1hIVWBXT4Sti8jRmplIDuxMdCvhaxe6Wr',
'https://drive.google.com/uc?export=view&id=1PUrv_MtmMJ3tDqTK9rG6n0eoccY3LvYq',
'https://drive.google.com/uc?export=view&id=1k8zhvUzs5i8RTXmymSq72Fl0jAhfjts5',
'https://drive.google.com/uc?export=view&id=12nP8eaQE_6_d0jseF8p7jdWjJYyV7tx3',
'https://drive.google.com/uc?export=view&id=11nnzfMF_M0WYoVI08ndGHKyjjjIKI-GL',
'https://drive.google.com/uc?export=view&id=1wPVzJG16dkb3hKXX0lHVdVSgoFkrj-0L',
'https://drive.google.com/uc?export=view&id=1g9l_WlAdREY_Y-5tQmkEkhQQh1FemYEz',
'https://drive.google.com/uc?export=view&id=1Z8M7A4sGqgMxSmwPoKCelLj9zGTaITbM',
'https://drive.google.com/uc?export=view&id=1DouyJHldL29zYUzHq0Hz1MUfDYaX2ENQ',
'https://drive.google.com/uc?export=view&id=1VbrBhnOBfMCrgRdDEaY0qPYCX2dooVxd',
'https://drive.google.com/uc?export=view&id=171r8ctFNyClKA4AZwAZZ57TQ3y27bRGG',
'https://drive.google.com/uc?export=view&id=11uy9AiI8sqFZX1RLDMX_N3zvErL3mJGc',
'https://drive.google.com/uc?export=view&id=1L0BMDg4DB7SNtv_GEHZ05A18Oj5P2JfU',
'https://drive.google.com/uc?export=view&id=1KhbqXJGQswbkZhQ0YwW_SIn1LeOUD2Ra',
'https://drive.google.com/uc?export=view&id=1Qf31AHN6wG8dwGFgJwTIgyeTafTS_6uB',
'https://drive.google.com/uc?export=view&id=1tJ6MWWqZyO86LFLlb3BtTxf2awcyE2GD',
'https://drive.google.com/uc?export=view&id=1AabcEdBlqrknBwy7hVVZB6lViHGZmJzc',
'https://drive.google.com/uc?export=view&id=1denCSCBQ7GKnN3ReldmT8iz91-WO6s_J',
'https://drive.google.com/uc?export=view&id=1QMSyt2fWff4X9sW_gYd07H_nP-Yxnk4x',
'https://drive.google.com/uc?export=view&id=1v-v-YxTeC2q_Js3cEMC193iN3dfm40pC',
'https://drive.google.com/uc?export=view&id=12H6fZIoaWyooo0sy96pJIycyRQ8wobhf',
'https://drive.google.com/uc?export=view&id=1zlW8y15A59WH8nK7yoGq2FnMGryuPH68',
'https://drive.google.com/uc?export=view&id=13c8HNKraHLvvcVPg3YoU0iplFWw9YE9d',
'https://drive.google.com/uc?export=view&id=1ACwxAS4UqsfyCFmbqq5qpBHC93wwHEmK',
'https://drive.google.com/uc?export=view&id=182BfUW2iK8JUajqVaU_QS1a0aY4vL6sU',
'https://drive.google.com/uc?export=view&id=19KI91UWMynPmZTG-pZxHqEBhZPehqGJA',
'https://drive.google.com/uc?export=view&id=1ISC1qk6Q07lSkht_QaQ7nU9qZ99D7h0J',
'https://drive.google.com/uc?export=view&id=1KG1paRkF-MQV4YVMiVKb4oUYIr_YYC3-',
'https://drive.google.com/uc?export=view&id=1d7GwLWcHUpb0fFDYe_5YkC3sRFplCKUQ',
'https://drive.google.com/uc?export=view&id=1OC8tVW7EqACBNgbdlKBjcRaNrKquwvHw',
'https://drive.google.com/uc?export=view&id=1EhLSs4oaI767L2qWng1vt6eF25sorVNt',
'https://drive.google.com/uc?export=view&id=1Zk4UaJ9oTUvGEM2t7qqWefMXEDVDkhWH',
'https://drive.google.com/uc?export=view&id=1hMFa_nhpsdCDZo2Ny8y03PUbc5CGUZub',
'https://drive.google.com/uc?export=view&id=1q4SID3-gIEYm_ilElLQbSf5llcMx5fNy',
'https://drive.google.com/uc?export=view&id=1-B04WlxggPfiEgKQDeQITyENu0AcijLW',
'https://drive.google.com/uc?export=view&id=11oiLFPCVmuntkc1BwcXDOL__O5VsAZk1',
'https://drive.google.com/uc?export=view&id=1PPoceD1hhaOVbSpzg03iY4GYETllB6if',
'https://drive.google.com/uc?export=view&id=1bEbD6AceghCnKGtXNX6LuQIeXDKHCNbB',
'https://drive.google.com/uc?export=view&id=1Z-l-Gv1a3wRSMpevZr5c0GHgBbE1lZxB',
'https://drive.google.com/uc?export=view&id=1Dci46wU4-bNOskvTqR3bo3uHm4aJXqKv',
'https://drive.google.com/uc?export=view&id=1SxjRYHHhRXX3_eRzoOYeQSGYRC-qTzoU',
'https://drive.google.com/uc?export=view&id=16xekF2zmI9o_Ni44dxP9robvigd7oNA6',
'https://drive.google.com/uc?export=view&id=1MKKKslEhQRx9o-eIpxanKxTwGY4uzMxa',
'https://drive.google.com/uc?export=view&id=1JFpfrVxm14XTVO3S_TCa909Pl9YYUR2W',
'https://drive.google.com/uc?export=view&id=1ADRerpY6YD_GCGZzSeK5R7Ih65aRczs2',
'https://drive.google.com/uc?export=view&id=1Lu9tMoyea5wDKhmBWOibXR3vCcpiZay0',
'https://drive.google.com/uc?export=view&id=17lntKQFhaYNj3q17Ei7_8iigNBuNoZ9_',
'https://drive.google.com/uc?export=view&id=1GQ71mi00Fv30gldkI2Nyg-Kr1FWH_X1Y',
'https://drive.google.com/uc?export=view&id=1WcR3zJmlvrui0jIgRJwj0Y4VpcBQpqdV',
'https://drive.google.com/uc?export=view&id=13whPvtuvHQRLCuxYO1s-WwqxGborwOpN',
'https://drive.google.com/uc?export=view&id=1pngDBD27JgAcybJwYMwo6Jo_uzRi4jrN',
'https://drive.google.com/uc?export=view&id=1qNsgR2Xf5yz1YY9VDeFNQrP7whe-vgP0',
'https://drive.google.com/uc?export=view&id=143Psnq8V9M_b740Jer5JdsVuIrgakIUx',
'https://drive.google.com/uc?export=view&id=1ewozn2MuOl8QVYdhFWYe3YBRAQ-zRFlb',
'https://drive.google.com/uc?export=view&id=1Z9OLPBqgVGtJQOzzTmPbSDpjD1_ojWXL',
'https://drive.google.com/uc?export=view&id=1fEA7UJilfL6iWzk1V2O3ehX3L2uG9zb6',
'https://drive.google.com/uc?export=view&id=1j378lEtdz7WpstA0ZGP3okTfAcWlYg9w',
'https://drive.google.com/uc?export=view&id=1T13alhhSZa1d0yJ_EIRtCzc-YI6tTmHG',
'https://drive.google.com/uc?export=view&id=1W5deG0_E2B90H7QoenXa3ha-ze2tTPJw',
'https://drive.google.com/uc?export=view&id=1aVvUoVqYMwNKel0XYba_b6nR4-xTXl6k',
'https://drive.google.com/uc?export=view&id=1kRPhFq3YvCP9gXLOCe09gLPyYay8Uan5',
'https://drive.google.com/uc?export=view&id=1TuErYKKlzcuWJ2TzjmesXxYcCSwlk5VE',
'https://drive.google.com/uc?export=view&id=1ZjBA63XzA0xefcf61OMmyOCYa7okQErp',
'https://drive.google.com/uc?export=view&id=1hxhxpzrslQvmvb6Z9oqUGbTSWlWKXVEE',
'https://drive.google.com/uc?export=view&id=1V60UpsDaOaMI_FLjRLl2Q8qLtDd_g7Dq',
'https://drive.google.com/uc?export=view&id=1DR4zAsrekdG3sSd8GcFB0Yll88hKsdHB',
'https://drive.google.com/uc?export=view&id=1r76mP-zdffXcaqhQ0Nb0lQF9oDHq2H7U',
'https://drive.google.com/uc?export=view&id=1Rfn5oVroCqNh2i9QRdaVqxM1yNKujP0u',
'https://drive.google.com/uc?export=view&id=1AkrRF-TXXNYwPDMtQV0d9jSGMaNY_01i',
'https://drive.google.com/uc?export=view&id=1THZuOOE6ZDBnOmqNvqbQDyEan2PtGBDG',
'https://drive.google.com/uc?export=view&id=14vhP84YPkancvsckyScnvWeL9hzpmvBK',
'https://drive.google.com/uc?export=view&id=1mZo_mpXVeBhF7RDbv6fJkgPSUszMX163',
'https://drive.google.com/uc?export=view&id=1wJz5zW_6C2G3Fs5nJvugsOa5Jif_HgDt',
'https://drive.google.com/uc?export=view&id=1w1fKTSki4hq-QwAOqlPdgSrrAZutBgNj',
'https://drive.google.com/uc?export=view&id=1t6qYCIPpNqskRd77QCDBSjj71JazK3HK',
'https://drive.google.com/uc?export=view&id=1jTp3VF1_oxfmx8dbbM3XFaoBjmAne2Zc',
'https://drive.google.com/uc?export=view&id=1FKb9itMwuqGrzdvcWPu4csGDX8Uo6lfS',
'https://drive.google.com/uc?export=view&id=1u0xbIPSpdAs-zDyq6Y6PBf54L3X3QRhC',
'https://drive.google.com/uc?export=view&id=1gbyGXIp4SGnb_wSrgjnzofP2_smXNZP8',
'https://drive.google.com/uc?export=view&id=1JlP0kkKKHio9SuxXVzG2WPjjl812nBfc',
'https://drive.google.com/uc?export=view&id=1TV2sQXrxEftn3-jZwTPWdQpOXVVTAIs2',
'https://drive.google.com/uc?export=view&id=1tdppzyFoKdA0D4itXjFCOQOowGBLNXRj',
'https://drive.google.com/uc?export=view&id=1PuqPUyZ3O9ayZdOg_7C5ggErNUlwN3HV',
'https://drive.google.com/uc?export=view&id=1bv9q6plXJCmCrMPupByBN3TgWgaCnRuL',
'https://drive.google.com/uc?export=view&id=1qyqfnHQH3biK9mls9D05CQGR2P8iPhJr',
'https://drive.google.com/uc?export=view&id=1kn0vvSc3DnGP69dYixRDu44cMUAw-7PA',
'https://drive.google.com/uc?export=view&id=1IlMLJ1K7O0S-8HXumxFunYbsUOxMJ_G5',
'https://drive.google.com/uc?export=view&id=1tLIC59JiHBoFEnwIvd0w10Y_FiO5oNMF',
'https://drive.google.com/uc?export=view&id=16yLdojJywWmsLlGV92D_ajAduol6OEtC',
'https://drive.google.com/uc?export=view&id=1plpjs18BrnGJnhUwf5DQOXn7yAYkDSah',
'https://drive.google.com/uc?export=view&id=1D680fHIovEPAikQYiBIcxOaFs7KpN8MG',
'https://drive.google.com/uc?export=view&id=1ao40oh2yFoKxlWnXJQhHLCdaBplEQwte',
'https://drive.google.com/uc?export=view&id=1uMVUn5xMJ6YiL27GXr6gci6_AF06lkop',
'https://drive.google.com/uc?export=view&id=1z7APKhgh2AVyoDOWGQpfzp7vSwpW2afs',
'https://drive.google.com/uc?export=view&id=1xVytH_cqgzWRu8J7vsM_LgXUVHnmrdaN',
'https://drive.google.com/uc?export=view&id=1eYZ2WlsbxIPYXSPPR2ZMo_24wl84enOr',
'https://drive.google.com/uc?export=view&id=18bqhlvhKfHbiM6xeoTfvMUvKORQRdobh',
'https://drive.google.com/uc?export=view&id=1I-Gk8WReIZL7REfnk-a0ukyLAg1jMTDy',
'https://drive.google.com/uc?export=view&id=1CFCI0G86K1sYNGY7Bm7ZyPWc-VsFs8NG',
'https://drive.google.com/uc?export=view&id=1lL19q3um1_89hCG9uOOFLlJ6QpaBIB60',
'https://drive.google.com/uc?export=view&id=1EumVcgOWA5LTlfuwht1EnAmkNYreeFdz',
'https://drive.google.com/uc?export=view&id=1VRQSvMnD7l_LeQSWYp4SfsGlUeYaHWK9',
'https://drive.google.com/uc?export=view&id=1ihF5WkdMISMjsfhKdWBqgMfy1oB1z0O6',
'https://drive.google.com/uc?export=view&id=1CV63PoqRMX8hhGhP38WZWkpyyf9M-nIn',
'https://drive.google.com/uc?export=view&id=1pgEqsi5QwHDFUg4m7tog9_Iv2lMM6bEV',
'https://drive.google.com/uc?export=view&id=1R6cthflgReu_wA-GiBi1uODG3x5JCDzn',
'https://drive.google.com/uc?export=view&id=1n7odfLhw71oYD13y-x8BKMyCxhoQBZqH',
'https://drive.google.com/uc?export=view&id=1gR46nuH7PWJsvs_ucDD5m9fs4WFrqE6Q',
'https://drive.google.com/uc?export=view&id=1h6hDQwj6YMerwCMhO39u0SaGB4f1Ti-a',
'https://drive.google.com/uc?export=view&id=1udPCSuPaQrPCVBe43z0lX3KVJzv3N2RX',
'https://drive.google.com/uc?export=view&id=1wfjZP9j38sESVuXoT7Qof6-dZ-wEO-Px',
'https://drive.google.com/uc?export=view&id=1iyFTZM235ACJSUU9ZQiuL1tNxwA7AqxM',
'https://drive.google.com/uc?export=view&id=1AS5_SKG0jDxMSGnv3FZnK_m3hwwjTn86',
'https://drive.google.com/uc?export=view&id=16OEPCzrtsDpIqnaJeFJ2thHZRab2u4H-',
'https://drive.google.com/uc?export=view&id=12NSF9rBdJFJUAZN3W65IXU579kC3hHM-',
'https://drive.google.com/uc?export=view&id=12m31gU-iDyHAjePw2dCcTGVkvNtVqKjj',
'https://drive.google.com/uc?export=view&id=1RjXHoFEU8b8yS3DNSNhasT2kw73DvVQw',
'https://drive.google.com/uc?export=view&id=1sRw6hmP6wgTCJGcKOnrMB0ROVyAdp1oR',
'https://drive.google.com/uc?export=view&id=12HtlyGFtW3vBjhDTN0sQ9ShYD2YFM4XP',
'https://drive.google.com/uc?export=view&id=1nYrGVBaVyZvOhx6Jca-TAwvWIccviO6Y',
'https://drive.google.com/uc?export=view&id=1ajZqZdYmoNhAPneq3dL4-32zkZqBs0u4',
'https://drive.google.com/uc?export=view&id=1nOgI2ISNTMrhkWrjU4q4ipCsyZpioeCQ',
'https://drive.google.com/uc?export=view&id=1vXNcA6YjHKEBX8yL7O9pUJyf2Av7sL1y',
'https://drive.google.com/uc?export=view&id=1Ssxs9X3x9dzQf72T0pLs2mw6_nOUi3xg',
'https://drive.google.com/uc?export=view&id=1zH9HE9yf1HTNlK91uPzNUdx6GWyIy2UF',
'https://drive.google.com/uc?export=view&id=1rnjTM_c5A1kwrEq4TW14tl0WrRwJsm4d',
'https://drive.google.com/uc?export=view&id=1gGtf85JseNf3RLqO8XQW_u3-lhyj3c-L',
'https://drive.google.com/uc?export=view&id=1cAMtllfeMVbuizYD7o4kJFI6OpcOztgJ',
'https://drive.google.com/uc?export=view&id=12f6RA67Jqi8VR8D1vgPujAMh1YWbU2ab',
'https://drive.google.com/uc?export=view&id=1dkYKpyP3q6N8mLjNCqW2vRbmVu2Tc3Xs',
'https://drive.google.com/uc?export=view&id=14QpSOHe2B-_D2lUGE3e6T-57h1NQNy22',
'https://drive.google.com/uc?export=view&id=1IVDjShMmjSv2g72RsxCE0GmQNpQsZ3TQ',
'https://drive.google.com/uc?export=view&id=1S0W7lLi4FL_AVEhsCuAMh9IxXRUlLrHB',
'https://drive.google.com/uc?export=view&id=1eLmDMOG6hd4S7BxEfRFxf4lrecPChqNk',
'https://drive.google.com/uc?export=view&id=1Fzkuz_fj7ZB8hMCEmHuOElyapw_85IZs',
'https://drive.google.com/uc?export=view&id=1bCpPDVyCwh6NQzdNeWH0_PJzh92EZfOP',
'https://drive.google.com/uc?export=view&id=1msL1o-M4mX2fxmFhif8RWZ_wQoUiti_3',
'https://drive.google.com/uc?export=view&id=1W6HnaMV0WOfFW356DZQe_2krRPXehpy8',
'https://drive.google.com/uc?export=view&id=1cADtsF_SVSodRfR7Wubk2p3bNW3CUaqR',
'https://drive.google.com/uc?export=view&id=1UmCNHcutlz4E8XTolfhYT-x_EozjZ5vK',
'https://drive.google.com/uc?export=view&id=1-tSb_tXqXDs9tOqCZvGDFgaG6gen11y7',
'https://drive.google.com/uc?export=view&id=1P7Cl4LU9ghZqfB8NJqj4DQdkMjP-uA2-',
'https://drive.google.com/uc?export=view&id=15JJiigYLQqK_L_E84VaVxy-5NA1nUtE9',
'https://drive.google.com/uc?export=view&id=1uTrIi9e-WAtJ0cCUVjGohQA8Ky7FzDNc',
'https://drive.google.com/uc?export=view&id=1wUBbrtv-IoX_EDWwawG_ATVhvxMAM1ln',
'https://drive.google.com/uc?export=view&id=1jsXSiOMbNk719I_QzkB4IrYftBbgZR3M',
'https://drive.google.com/uc?export=view&id=17_oYlxXWkUb5z_j0w62ZmCuQrZEVivZi',
'https://drive.google.com/uc?export=view&id=15b_DeQ2VBx-psXZ1cHnui78n72PjofD1',
'https://drive.google.com/uc?export=view&id=1iVme7U0HbxeHhGWmu8s2J61z-ur4P3qZ',
'https://drive.google.com/uc?export=view&id=1R_J5HSHUkQiNF7bzrozCvHkFih_KgUfj',
'https://drive.google.com/uc?export=view&id=1Tz0wZFWf10CNokUupiUNS6oR8d40ErUL',
'https://drive.google.com/uc?export=view&id=1zSg5Y-Xp10gc4CkW164U24yKEpLL3vkd',
'https://drive.google.com/uc?export=view&id=1kl1YIpIH2u5ut8zAMIzcLLVyBWAj0IOZ',
'https://drive.google.com/uc?export=view&id=1EhkA-UFPZo7Rv11DBmpJzz2Lzb1kI-gE',
'https://drive.google.com/uc?export=view&id=1zHWHecWoNTS3adw_3G5sViZ4nA7jjHUf',
'https://drive.google.com/uc?export=view&id=10_zJiKDFtZw3kTI9d1oJ0sIvKMifQui7',
'https://drive.google.com/uc?export=view&id=1WuNNiPGUJReVzzwBdHbbzq3Wx58JPiOp',
'https://drive.google.com/uc?export=view&id=1uWlDJRUbl3vFCgqypI2RSBDSDDA8AMrK',
'https://drive.google.com/uc?export=view&id=13lUXB-xRLdJSc7z0Xp24ox8eWQHRk6WT',
'https://drive.google.com/uc?export=view&id=1RxdJ1GaEExRTW4peLN7rYfrAbPxtApmh',
'https://drive.google.com/uc?export=view&id=1izsYJvwh6fvJyeq3jY9mpsPiNr8N16AV',
'https://drive.google.com/uc?export=view&id=1oLi1dndlow6oDysQtBuivPscZxhAYPQT',
'https://drive.google.com/uc?export=view&id=1nqA6jMtI3vSZgoZBWCGyWIFHK6RlOkLr',
'https://drive.google.com/uc?export=view&id=1CdABrp7saWdgSCMD2tlqODc4V-6heFNR',
'https://drive.google.com/uc?export=view&id=1rgND7uL0ci_dRSNqzeKtjOpA44IEp1C1',
'https://drive.google.com/uc?export=view&id=1giuO7KXdhCjAaajwRGe5CaXY6BADE_o3',
'https://drive.google.com/uc?export=view&id=1Ibg44Aisy-6mSEYhQdj-OfEdFxL4Pyjz',
'https://drive.google.com/uc?export=view&id=1gi4Y0RLcIsUT44KWFT3s6dEoRZaF8FSa',
'https://drive.google.com/uc?export=view&id=1m75hiFxiaiyO0iG3N4Hg5o4hwy8GYaYN',
'https://drive.google.com/uc?export=view&id=1uYyjieX4LPJNJBhWVQIn7DF4mzVveptx',
'https://drive.google.com/uc?export=view&id=1491K88LeUiMTcuUOkbk9X880Qcp1iaHs',
'https://drive.google.com/uc?export=view&id=1neRyvK_ystGzcYEEVJg1-iqPeEmc2jk_',
'https://drive.google.com/uc?export=view&id=1ym1mowS4KVDihz8OTB_jFcVN4gWInt5J',
'https://drive.google.com/uc?export=view&id=1_m7hPEvqe07-MxzcyuUUQ7J4m90IO9IA',
'https://drive.google.com/uc?export=view&id=1MwfmH_5JSvIJSNqcPspI-EGcrGME9yvG',
'https://drive.google.com/uc?export=view&id=1cQ5EcL4-AXwCW1yGX0WZNopHZh7zV6_o',
'https://drive.google.com/uc?export=view&id=1obCUNYSGihEJtMR3TcAotrDh3beVPxBq',
'https://drive.google.com/uc?export=view&id=1GdkDrwC67c3JBHHfu-XNzrpGGoKrmv-m',
'https://drive.google.com/uc?export=view&id=1IBuOekPn5gbYepU5MNWLtoIb9O__5SUS',
'https://drive.google.com/uc?export=view&id=167O78a7ZYwn9zPy1t-qVmVveDK1GQVwq',
'https://drive.google.com/uc?export=view&id=12cn-ZI-AmWQiTzO-H1lQ7LCFAHXYkMLt',
'https://drive.google.com/uc?export=view&id=1BUnbQSRt9dRltBm7DC9jBqnW2jOyigsd',
'https://drive.google.com/uc?export=view&id=1x75COB_UcdHJNn7gn4J890IxXZGV1WoA',
'https://drive.google.com/uc?export=view&id=1ypDfXDX-Nq2Q62AQ_OzBhZu8LUFACJ6u',
'https://drive.google.com/uc?export=view&id=1cvh2sG-c0N6ykR7b1ZXC0rFv5on9Hktz',
'https://drive.google.com/uc?export=view&id=1U3vxG1FmmzjvAPet-jibfLWmNgaQ18w2',
'https://drive.google.com/uc?export=view&id=14s4Lcie_mmfp_Est-VQxsgXtHqmSqMXW',
'https://drive.google.com/uc?export=view&id=17JOeU_YxObrS1UX2mVpYJqC8gDZjtBo5',
'https://drive.google.com/uc?export=view&id=1lRBPxFtDLXidRUD4HOmjz1oFcR3g3bu6',
];

String s= "alilou built the Walpaper app as a Free app. This SERVICE is provided by alilou at no cost and is intended for use as is.\nThis page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.\nIf you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Walpaper unless otherwise defined in this Privacy Policy.\nInformation Collection and Use\nFor a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.\nThe app does use third-party services that may collect information used to identify you.\nLink to the privacy policy of third-party service providers used by the app\nGoogle Play Services\nLog Data\nI want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (???IP???) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.\nCookies\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\nThis Service does not use these ???cookies??? explicitly. However, the app may use third-party code and libraries that use ???cookies??? to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\nService Providers\nI may employ third-party companies and individuals due to the following reasons:\nTo facilitate our Service;\nTo provide the Service on our behalf;\nTo perform Service-related services; or\nTo assist us in analyzing how our Service is used.\nI want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\nSecurity\nI value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.\nLinks to Other Sites\nThis Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\nChildren???s Privacy\nThese Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.\nChanges to This Privacy Policy\nI may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\nThis policy is effective as of 2023-02-17\nContact Us\nIf you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at onepiecexx860@gmail.com.\nThis privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator";