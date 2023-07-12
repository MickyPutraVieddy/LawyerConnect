import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

// sliding card

// buat get texksnya dari index
// _current[ListText]

// contoh pengecekan jika ada perubahan
// _current == entry.key ? 35 : 11

// ini untuk membuat list dari beberapa gambarnya

final List<String> Listgambar = [
  'lib/image/screenslide/slide1/background1.jpg',
  'lib/image/screenslide/slide1/bg2.jpg',
  'lib/image/screenslide/slide1/bg4.jpg',
  'lib/image/screenslide/slide1/bg5.jpg'
];

var listJudul = [
  'Membuka pintu keadilan untuk semua orang',
  "Mencari bantuan hukum hanya dari smartphone anda",
  "Miliki asuransi hukum pribadi anda, Sekarang juga!",
  "Memudahkan anda untuk konsultasi dengan ahli hukum"
];
final List<String> listDesc = [
  "Kami memastikan bahwa hukum dapat diakses oleh semua orang, tanpa memandang keterbatasan finansial",
  "Tidak lagi kesulitan dalam mencari semua bantuan hukum, seperti LBH Dan Firma Hukum dapat diakses dengan mudah",
  "Tidak perlu khawatir akan terjerat hukum sewaktu waktu. Dengan miliki produk asuransi hukum, kamu akan dibantu.",
  "Tidak lagi kesulitan untuk konsultasi dengan ahli hukum untuk mengetahui masalah apapun dimanapun.                        "
];

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<SplashScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final pagecontroller = PageController();
  // membuat list container

  @override
  Widget build(BuildContext context) {
    final List<Widget> mycontainer = [
      ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            _controller.jumpToPage(_current + 1);
          },
          child: Text("Mulai")),
      ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            _controller.jumpToPage(_current + 1);
          },
          child: Text("Lanjutkan")),
      ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            _controller.jumpToPage(_current + 1);
          },
          child: Text("Lanjutkan")),
      ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            setState(() {
              Get.toNamed('/page2');
            });
          },
          child: Text("Masuk"))
    ];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CarouselSlider(
              items: Listgambar.map((item) => Container(
                    child: Stack(children: [
                      Image.asset(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                        width: width,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            // ini untuk membuat Teksnya di dalem container
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 500),
                                child: Container(
                                  height: 190,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(158, 158, 158, 158),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Text(
                                        listJudul[_current],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        listDesc[_current],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Container(
                                          width: 300,
                                          height: 50,
                                          child: mycontainer[_current],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  )).toList(),
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  height: height,
                  // ini ketika gambar nya ingin di lebarkan
                  viewportFraction: 1,
                  // ini ketika di slide gambarnya kaya deep ke dalam
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),

            // ini untuk indicator slidernya

            Padding(
              padding: const EdgeInsets.only(top: 800),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: Listgambar.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: _current == entry.key ? 35 : 11,
                      height: 12.0,
                      margin: EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _current == entry.key
                              ? Colors.orange
                              : Colors.white),
                    ),
                  );
                }).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("lib/image/screenslide/slide1/Logo.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    child: Image.asset(
                        "lib/image/screenslide/slide1/LawConnect.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
