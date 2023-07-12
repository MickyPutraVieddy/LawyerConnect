import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginpages extends StatefulWidget {
  @override
  State<Loginpages> createState() => _LoginpagesState();
}

class _LoginpagesState extends State<Loginpages> {
  final Textedit = TextEditingController();

  // membuat visible
  var _isvisible = true;
  // membuat obscure text
  var _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Masuk",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    decoration: InputDecoration(
                      hintText: "Ketik email",
                    ),
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
                child: Flexible(
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
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    Get.toNamed('/dashboard');
                  },
                  child: Text("Masuk"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 21,
                    ),
                    SizedBox(
                      width: 170,
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 20,
                        endIndent: 20,
                      ),
                    ),
                    Text(
                      "atau",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 170,
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 200,
                          width: 50,
                          child: Image.asset(
                              "lib/image/screenslide/logo/google.jpg")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Masuk Menggunakan Google",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Belum mempunyai akun?",
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed('/page3');
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
