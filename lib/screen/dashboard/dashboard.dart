import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lomba_gemastik/screen/Asuransi/asuransi.dart';
import 'package:lomba_gemastik/screen/Beranda/beranda.dart';
import 'package:lomba_gemastik/screen/Kasus/kasus.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // untuk index bottombar
  int _selected = 0;

  // list untuk textnya

  //untuk list widget

  @override
  Widget build(BuildContext context) {
// untuk list width nya
    var width = MediaQuery.of(context).size.width;
// untuk list heightnya
    var height = MediaQuery.of(context).size.height;

    final List<Widget> _widgetoptions = <Widget>[
      Berandascreen(),
      Pengacarascreen(),
      Kasusscreen(),
      AsuransiScreen()
    ];

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
          selectedIndex: _selected,
          onTabChange: (value) {
            setState(() {
              _selected = value;
            });
          },
          // untuk tulisanya gap
          gap: 8,
          // untuk background bar
          backgroundColor: Colors.white70.withOpacity(0.1),
          activeColor: Colors.orange,
        ),
        body:
            SingleChildScrollView(child: _widgetoptions.elementAt(_selected)));
  }
}

class Pengacarascreen extends StatelessWidget {
  const Pengacarascreen({super.key});

  @override
  Widget build(BuildContext context) {
    // untuk list width nya
    var width = MediaQuery.of(context).size.width;
// untuk list heightnya
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          height: 120,
          width: width,
          color: Colors.white,
          child: Text(
            "Pengacara",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        Container(
          height: height,
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed('/pengacara1');
                },
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.green,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Hero(
                          tag: 'gambar',
                          child: Image.asset(
                              "lib/image/screenslide/gambar/pengecara1.png")),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      Text(
                        "Monica Cania",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Firma Hukum Budi Dharma",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/pengacara2');
                },
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.green,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Hero(
                          tag: 'gambar',
                          child: Image.asset(
                              "lib/image/screenslide/gambar/pengacara2.png")),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      Text(
                        "Monica Cania",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Firma Hukum Budi Dharma",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/pengacara3');
                },
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.green,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Hero(
                          tag: 'gambar',
                          child: Image.asset(
                              "lib/image/screenslide/gambar/pengacara3.png")),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      Text(
                        "Monica Cania",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Firma Hukum Budi Dharma",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
