import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Kasusscreen extends StatefulWidget {
  const Kasusscreen({super.key});

  @override
  State<Kasusscreen> createState() => _KasusscreenState();
}

class _KasusscreenState extends State<Kasusscreen> {
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
              "Kasus Terkini",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 550, left: 290),
          child: FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {
              Get.toNamed("/kasus");
            },
            child: Icon(Icons.add_circle_outline_outlined, size: 35),
          ),
        )
      ]),
    ]));
  }
}
