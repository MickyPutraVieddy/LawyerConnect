import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lomba_gemastik/screen/Asuransi/credit/credit.dart';
import 'package:lomba_gemastik/screen/Asuransi/e-wallets/ewallets.dart';
import 'package:lomba_gemastik/screen/Asuransi/virtualaccount/virtual.dart';

class Paidscreen extends StatefulWidget {
  const Paidscreen({super.key});

  @override
  State<Paidscreen> createState() => _PaidscreenState();
}

class _PaidscreenState extends State<Paidscreen> {
  int current = 0;
  var listjudul = ["Virtual Account", "E-Wallets", "Credit/Debit Card"];

  // untuk list widgetnya
  final List<Widget> _widgetoptions = <Widget>[
    Virtualscreen(),
    Walletscreen(),
    Creeditscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Metode Pembayaran",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(children: [
                  /// CUSTOM TABBAR
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listjudul.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.all(5),
                                  width: 120,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: current == index
                                        ? Colors.orange
                                        : Colors.white54,
                                    borderRadius: current == index
                                        ? BorderRadius.circular(15)
                                        : BorderRadius.circular(10),
                                    border: current == index
                                        ? Border.all(
                                            color: Colors.white54, width: 2)
                                        : Border.all(color: Colors.orange),
                                  ),
                                  child: Center(
                                    child: Text(
                                      listjudul[index],
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: current == index,
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle),
                                  ))
                            ],
                          );
                        }),
                  ),

                  /// MAIN BODY
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                          margin: const EdgeInsets.only(top: 30),
                          width: double.infinity,
                          height: 550,
                          child: _widgetoptions.elementAt(current))),

                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/total');
                          },
                          child: Text("Pilih Metode Pembayaran",
                              style: TextStyle(fontSize: 18)),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              )))),
                ]))));
  }
}

//  List.generate(
//                     3,
//                     (index) => Container(
//                           width: 100,
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             child: Text(listjudul[index]),
//                           ),
//                         ))),
