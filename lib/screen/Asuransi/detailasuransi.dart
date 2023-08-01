import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detailasuransi extends StatelessWidget {
  const Detailasuransi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Detail Asuransi",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 400,
              width: 380,
              color: Colors.white70,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Nama Lengkap"),
                        SizedBox(
                          width: 90,
                        ),
                        Text(
                          "Daffa Naufal Fajriansyah",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("NIK"),
                        SizedBox(
                          width: 190,
                        ),
                        Text(
                          "3525015201880002",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Tanggal Lahir"),
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          "1-Maret-2004",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Email"),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          "daffanaufal267@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Nomor Telepon"),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          "08979878123",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text("Alamat"),
                          height: 40,
                          width: 100,
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        SizedBox(
                          height: 40,
                          width: 210,
                          child: Text(
                            textAlign: TextAlign.end,
                            "Jl.Cendana IV RT 012/013, Permai Koja, Jakarta Utara",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text("Riwayat Hukum Selama Hidup"),
                          height: 40,
                          width: 100,
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        SizedBox(
                          height: 40,
                          width: 210,
                          child: Text(
                            textAlign: TextAlign.end,
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text("Informasi Pengacara"),
                          width: 150,
                          height: 30,
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        SizedBox(
                          height: 40,
                          width: 160,
                          child: Text(
                            textAlign: TextAlign.end,
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text("Dokumen Tambahan"),
                          width: 150,
                          height: 40,
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        SizedBox(
                          height: 40,
                          width: 160,
                          child: Text(
                            textAlign: TextAlign.end,
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text("Penyedia Asuransi"),
                          height: 40,
                          width: 150,
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        SizedBox(
                          height: 40,
                          width: 160,
                          child: Text(
                            textAlign: TextAlign.end,
                            "Generali Indonesia",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 380,
            height: 160,
            color: Colors.white70,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.receipt_long,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        "Rincian Pembayaran",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Text("Premi"),
                        height: 20,
                        width: 150,
                      ),
                      SizedBox(
                        width: 62,
                      ),
                      SizedBox(
                        height: 20,
                        width: 160,
                        child: Text(
                          textAlign: TextAlign.end,
                          "Rp 190.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Text("Polis"),
                        height: 20,
                        width: 150,
                      ),
                      SizedBox(
                        width: 62,
                      ),
                      SizedBox(
                        height: 20,
                        width: 160,
                        child: Text(
                          textAlign: TextAlign.end,
                          "Rp 300.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Text("Biaya Penanganan"),
                        height: 20,
                        width: 150,
                      ),
                      SizedBox(
                        width: 62,
                      ),
                      SizedBox(
                        height: 20,
                        width: 160,
                        child: Text(
                          textAlign: TextAlign.end,
                          "Rp 190.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/paid');
                  },
                  child: Text("Pilih Metode Pembayaran",
                      style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
        ])));
  }
}
