import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //ini index gak boleh di context "untuk indicatorslide"
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    // untuk width mentok
    var width = MediaQuery.of(context).size.width;

    // ini untuk heigth mentok
    // ignore: unused_local_variable
    var height = MediaQuery.of(context).size.height;

    // untuk list gambar
    final List<String> gambar = [
      'lib/image/screenslide/banner/Banner.png',
      'lib/image/screenslide/banner/Banner.png',
      'lib/image/screenslide/banner/Banner.png',
      'lib/image/screenslide/banner/Banner.png'
    ];
    final CarouselController _controller = CarouselController();
    // ignore: unused_local_variable
    final pagecontroller = PageController();

    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Beranda',
          ),
          GButton(
            icon: Icons.groups,
            text: 'Pengacara',
          ),
          GButton(
            icon: Icons.find_in_page,
            text: 'Kasus terkini',
          ),
          GButton(
            icon: Icons.health_and_safety,
            text: 'Asuransi',
          ),
        ],
        // untuk tulisanya gap
        gap: 8,
        // untuk background bar
        backgroundColor: Colors.white70.withOpacity(0.1),
        activeColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(top: 40),
              alignment: AlignmentDirectional.centerStart,
              height: 180,
              color: Colors.indigo.shade900,
              width: width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('lib/image/screenslide/logo/Avatar.png'),
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
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
            items: gambar
                .map((item) => Container(
                      child: Center(
                          child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        height: 400,
                        width: width,
                      )),
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
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              "Bantuan hukum terdekat",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 45),
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
            padding: EdgeInsets.only(left: 20),
            height: 250,
            width: 350,
            child: GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Image.asset('lib/image/screenslide/gambar/map.png'),
            ),
          )
        ]),
      ),
    );
  }
}
