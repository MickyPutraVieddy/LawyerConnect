import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<String> deliver = ["BCA", "BNI", "MANDIRI", "PERMATA"];

class Virtualscreen extends StatefulWidget {
  @override
  State<Virtualscreen> createState() => _VirtualscreenState();
}

class _VirtualscreenState extends State<Virtualscreen> {
  // untuk list nama
  final List<String> _listnama = [
    "BCA Virtual Account",
    "BNI Virtual Account",
    "Mandiri Virtual Account",
    "Permata Virtual Account"
  ];

  // ini untuk list gambar
  final List<String> _gambar = [
    "lib/image/screenslide/pembayaran/BCA.png",
    "lib/image/screenslide/pembayaran/BNI.png",
    "lib/image/screenslide/pembayaran/Mandiri.png",
    "lib/image/screenslide/pembayaran/Permata.png"
  ];

  // untuk deliver data
  var options = deliver[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
                4,
                (index) => Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 50,
                              child: Image.asset(_gambar[index]),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.25),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              width: 220,
                              child: Text(
                                _listnama[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Radio(
                              value: deliver[index],
                              groupValue: options,
                              onChanged: (value) {
                                setState(() {
                                  options = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ))),
      ),
    );
  }
}
