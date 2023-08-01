import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AsuransiScreen extends StatelessWidget {
  const AsuransiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Column(children: [
      Column(children: [
        Container(
            padding: EdgeInsets.only(),
            alignment: Alignment.center,
            height: 120,
            width: width,
            color: Colors.white,
            child: Text(
              "Asuransi Hukum",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
      ]),
      Container(
          height: height,
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.3,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/daftarasuransi");
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
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "lib/image/screenslide/logo/logoinsurance1.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Allianz",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/daftarasuransi");
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
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "lib/image/screenslide/logo/logoinsurance2.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Manulife",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/daftarasuransi");
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
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "lib/image/screenslide/logo/logoinsurance3.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Prudential",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/daftarasuransi");
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
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "lib/image/screenslide/logo/logoinsurance4.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Generali Indonesia",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))
    ]));
  }
}
