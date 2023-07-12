import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Textedit = TextEditingController();

  // membuat visibile
  var _isvisible = true;
  var _isvisible1 = true;

  // membuat obscure text
  var _obscure = true;
  var _obscure1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Daftar",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "Nama Lengkap",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Ketik nama lengkap"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Ketik email"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 246),
                child: Text(
                  "Nomer Telepon",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: "Contoh: 081234567890"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  "Kata Sandi",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isvisible = !_isvisible;
                            });
                          },
                          icon: Icon(_isvisible == false
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      hintText: "Ketik sandi",
                    ),
                    obscureText: _obscure = !_obscure,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "Konfirmasi Kata Sandi",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  height: 50,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isvisible1 = !_isvisible1;
                            });
                          },
                          icon: Icon(_isvisible1 == false
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      hintText: "Konfirmasi kata sandi",
                    ),
                    obscureText: _obscure1 = !_obscure1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 265),
                child: Text(
                  "Foto Profile",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
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
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {},
                  child: Text("Masuk"),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ]))));
  }
}
