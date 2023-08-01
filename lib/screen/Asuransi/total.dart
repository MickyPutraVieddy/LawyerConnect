import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Totalscreen extends StatefulWidget {
  const Totalscreen({super.key});

  @override
  State<Totalscreen> createState() => _TotalscreenState();
}

class _TotalscreenState extends State<Totalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Total Pembayaran",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 400,
              child: Column(
                children: [
                  Container(
                    height: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Total Pembayaran",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text("Rp 492.500",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Align(
                    child: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text(
                        "selesaikan pembayaran sebelum",
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "13 Juli 2023, 13:25 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          width: 115,
                        ),
                        Text(
                          "09:10",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            height: 150,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: Text(
                      "BCA Virtual Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                    SizedBox(
                      width: 100,
                    ),
                    SizedBox(
                        height: 20,
                        child: Image.asset(
                            fit: BoxFit.cover,
                            "lib/image/screenslide/pembayaran/BCA.png"))
                  ],
                ),
                SizedBox(
                  width: 360,
                  child: Divider(
                    height: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Align(
                    child: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Text(
                        "12345678910",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )),
                    alignment: Alignment.centerLeft),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Nomor virtual account",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    SizedBox(
                        width: 60,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Salin",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 16),
                            ))),
                    SizedBox(
                        height: 50,
                        width: 40,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.content_copy,
                            color: Colors.orange,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 225,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Cara Pembayaran",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "1. Buka BCA mobile, pilih menu “m-Transfer” ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "2. Pilih menu “BCA Virtual Account” ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 410,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "3. Masukkan nomor BCA Virtual Account dan klik “Send”",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "4. Cek nominal yang muncul ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "5. Masukkan PIN m-BCA ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "6. Transaksi Berhasil ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/transfer');
                  },
                  child: Text("Cek Status Pembayaran",
                      style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
        ],
      ),
    );
  }
}
