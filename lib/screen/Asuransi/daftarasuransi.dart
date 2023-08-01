import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Daftrasuransi extends StatefulWidget {
  @override
  State<Daftrasuransi> createState() => _detailkasusState();
}

class _detailkasusState extends State<Daftrasuransi> {
  var Textediting = TextEditingController();

  var Textediting1 = TextEditingController();

  var Textediting2 = TextEditingController();

  var Textediting3 = TextEditingController();

// ini untuk tanggal
  var _date = TextEditingController();

  // riwayat hukum
  var _hukum = TextEditingController();

  // ini untuk informasi pengacara
  var _pengacara = TextEditingController();

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
            "Daftar Asuransi Hukum",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 270),
            child: Text(
              "Nama Lengkap",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text(
              "Tanggal Lahir",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          Center(
            child: Flexible(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey)),
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: _date,
                    onTap: () async {
                      DateTime? pickdate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));

                      if (pickdate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('yyyy-MM-dd').format(pickdate);
                        });
                      }
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.calendar_month),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      hintText: "Pilih Tanggal Lahir",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 320),
            child: Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              height: 50,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Ketik email"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text(
              "Nomer Telepon",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              height: 50,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: "Contoh: 081234567890"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 310),
            child: Text(
              "Alamat",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          "Contoh: Jl.Mawar RT 014/013. Enggano, Jakarta Utara"),
                  textAlign: TextAlign.start,
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  enableInteractiveSelection: true,
                  controller: Textediting1,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 70),
            child: Text(
              "Riwayat Hukum Selama Hidup (Opsional)",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          "Contoh: Ya, saya pernah terjerat kasus pencemaran nama baik..."),
                  textAlign: TextAlign.start,
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  enableInteractiveSelection: true,
                  controller: _hukum,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 80),
            child: Text(
              "Informasi Pengacara (Jika ada referensi)",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ketik informasi pengacara"),
                  textAlign: TextAlign.start,
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  enableInteractiveSelection: true,
                  controller: _pengacara,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              "Dokumen Tambahan (Yang berkaitan dengan riwayat hukum)",
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
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/detailasuransi');
                  },
                  child: Text("Lanjutkan", style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 51, 109)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
          SizedBox(
            height: 10,
          ),
        ])));
  }
}
