import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class Berandascreen extends StatefulWidget {
  const Berandascreen({super.key});

  @override
  State<Berandascreen> createState() => _BerandascreenState();
}

//ini index gak boleh di context "untuk indicatorslide"
int _current = 0;

// untuk index bottombar
int _selected = 0;

// untuk list gambar slider 1
final List<String> gambar = [
  'lib/image/screenslide/banner/Banner.png',
  'lib/image/screenslide/banner/Banner.png',
  'lib/image/screenslide/banner/Banner.png',
  'lib/image/screenslide/banner/Banner.png'
];

final CarouselController _controller = CarouselController();
// ignore: unused_local_variable
final pagecontroller = PageController();

// list gambar
List<String> dataItem = ['lib/image/screenslide/gambar/sliders.png'];

class _BerandascreenState extends State<Berandascreen> {
  @override
  Widget build(BuildContext context) {
    // untuk list width nya
    var width = MediaQuery.of(context).size.width;
// untuk list heightnya
    var height = MediaQuery.of(context).size.height;

    return Column(children: [
      StickyHeader(
        content: Column(children: [
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
            items: gambar
                .map((item) => InkWell(
                      onTap: () {},
                      child: Container(
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          height: 400,
                          width: width,
                        )),
                      ),
                    ))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: gambar.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: _current == entry.key ? 10 : 11,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          _current == entry.key ? Colors.orange : Colors.grey),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              "Bantuan hukum terdekat",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Berikut adalah bantuan hukum terdekat dari lokasi kamu.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 20),
            height: 250,
            width: 350,
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Image.asset('lib/image/screenslide/gambar/map.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Artikel terkait hukum",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 90,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(color: Colors.orange),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Berikut adalah rekomendasi artikel yang bisa kamu baca kalau lagi senggang",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                _current = index;
              },
              viewportFraction: 0.5,
              height: 250.0,
              disableCenter: false,
            ),
            items: dataItem
                .map((Choice) => Container(
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 110,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              Choice,
                                            )),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 140,
                                  width: 190,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "4 Syarat Sah Perjanjian yang Wajib Anda Ketahui",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text("20 Juli 2023"),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 135,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary:
                                                      Colors.grey.shade300),
                                              onPressed: () {},
                                              child: Text(
                                                "Dokumen Bisnis",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ))
        ]),
        header: Container(
            padding: EdgeInsets.only(top: 40),
            alignment: AlignmentDirectional.centerStart,
            height: 180,
            color: Colors.indigo.shade900,
            width: width,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    child: Image.asset('lib/image/screenslide/logo/Avatar.png'),
                    onTap: () {
                      Get.toNamed('/profile');
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Halo, Daffa!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 85,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    // harus menggunakan flutter_svg untuk icon
                    icon: SvgPicture.asset(
                      'lib/image/screenslide/icon/email.svg',
                      color: Colors.white,
                      width: 45,
                      height: 45,
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.25),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    // harus menggunakan flutter_svg untuk icon
                    icon: SvgPicture.asset(
                      'lib/image/screenslide/icon/loncengkus.svg',
                      color: Colors.white,
                      width: 45,
                      height: 45,
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.25),
                  ),
                )
              ],
            )),
      ),
    ]);
  }
}
