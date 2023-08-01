import 'package:flutter/material.dart';

class detailkasus extends StatefulWidget {
  @override
  State<detailkasus> createState() => _detailkasusState();
}

class _detailkasusState extends State<detailkasus> {
  var Textediting = TextEditingController();

  var Textediting1 = TextEditingController();

  var Textediting2 = TextEditingController();

  var Textediting3 = TextEditingController();

  // untuk pengecekan
  bool? _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Unggah Kasus",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 250),
            child: Text(
              "Nama Lengkap",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 50,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ketika nama lengkap"),
                  showCursor: true,
                  maxLines: null,
                  enableInteractiveSelection: true,
                  controller: Textediting,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 290),
            child: Text(
              "Alamat",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          "Contoh: Jl.Mawar RT 014/013. Enggano, Jakarta Utara"),
                  textAlign: TextAlign.start,
                  maxLines: null,
                  enableInteractiveSelection: true,
                  controller: Textediting1,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 270),
            child: Text(
              "Judul Kasus",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 50,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  maxLines: null,
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Ketika judul kasus"),
                  controller: Textediting2,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 225),
            child: Text(
              "Deskripsi Kejadian",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 80,
              width: 350,
              child: Padding(
                padding: EdgeInsets.only(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Ketik deskripsi kejadian"),
                    textAlign: TextAlign.start,
                    controller: Textediting3,
                    maxLines: null,
                    enableInteractiveSelection: true,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(
              "File yang berkaitan dengan perkara",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Upload file",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Maksimum ukuran file 8 mb",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 185),
            child: Text(
              "Surat keterangan tidak mampu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Upload file",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Maksimum ukuran file 8 mb",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 21,
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    value: _selected,
                    onChanged: (value) {
                      setState(() {
                        _selected = value;
                      });
                    },
                  ),
                  Text(
                    "Dengan mencentang, artinya kamu setuju dengan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60,
            ),
            child: Row(
              children: [
                Text(
                  "Syarat & Ketentuan",
                  style: TextStyle(color: Colors.orange),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("yang berlaku")
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Lanjutkan", style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 51, 109)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
        ])));
  }
}
