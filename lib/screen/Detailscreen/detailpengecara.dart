import 'package:flutter/material.dart';

class pengacara1 extends StatelessWidget {
  const pengacara1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Detail Pengecara",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 25),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "lib/image/screenslide/gambar/pengecara1.png"))),
            ),
          ),
          Text(
            "Monica Cania",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "Firma Hukum Budi Dharma",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 10,
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 323),
            child: Text(
              "About",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Sebagai seorang ahli hukum perdata, Saya memiliki keahlian dalam menangani berbagai macam kasus yang berkaitan dengan sengketa perdata. Saya memiliki pemahaman yang mendalam tentang peraturan hukum dan prosedur yang terkait dengan kasus-kasus seperti kontrak, gugatan ganti rugi, klaim asuransi, kepemilikan properti, hukum keluarga, dan masalah hukum lainnya di ranah perdata. Saya sangat berdedikasi untuk menjaga hak-hak dan kepentingan klien-kliennya dalam segala aspek kasus perdata.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 125),
            child: Text(
              "Kasus yang sering ditangani",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  child: Text(
                    "Perdata",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  child: Text(
                    "Sengketa Tanah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                ),
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
                  onPressed: () {},
                  child: Text(
                    "Konsultasi",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sewa Pengacara", style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 51, 109)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
        ],
      )),
    );
  }
}

class pengacara2 extends StatelessWidget {
  const pengacara2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Detail Pengecara",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 25),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "lib/image/screenslide/gambar/pengacara2.png"))),
            ),
          ),
          Text(
            "Ariana Callista",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "Firma Hukum Budi Dharma",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 10,
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 323),
            child: Text(
              "About",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Sebagai seorang ahli hukum perdata, Saya memiliki keahlian dalam menangani berbagai macam kasus yang berkaitan dengan sengketa perdata. Saya memiliki pemahaman yang mendalam tentang peraturan hukum dan prosedur yang terkait dengan kasus-kasus seperti kontrak, gugatan ganti rugi, klaim asuransi, kepemilikan properti, hukum keluarga, dan masalah hukum lainnya di ranah perdata. Saya sangat berdedikasi untuk menjaga hak-hak dan kepentingan klien-kliennya dalam segala aspek kasus perdata.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 125),
            child: Text(
              "Kasus yang sering ditangani",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  child: Text(
                    "Perdata",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  child: Text(
                    "Sengketa Tanah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                ),
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
                  onPressed: () {},
                  child: Text(
                    "Konsultasi",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sewa Pengacara", style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 51, 109)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
        ],
      )),
    );
  }
}

class pengacara3 extends StatelessWidget {
  const pengacara3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Detail Pengecara",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 25),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "lib/image/screenslide/gambar/pengacara3.png"))),
            ),
          ),
          Text(
            "Edgar David",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "Firma Hukum Budi Dharma",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 10,
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 323),
            child: Text(
              "About",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Sebagai seorang ahli hukum perdata, Saya memiliki keahlian dalam menangani berbagai macam kasus yang berkaitan dengan sengketa perdata. Saya memiliki pemahaman yang mendalam tentang peraturan hukum dan prosedur yang terkait dengan kasus-kasus seperti kontrak, gugatan ganti rugi, klaim asuransi, kepemilikan properti, hukum keluarga, dan masalah hukum lainnya di ranah perdata. Saya sangat berdedikasi untuk menjaga hak-hak dan kepentingan klien-kliennya dalam segala aspek kasus perdata.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 125),
            child: Text(
              "Kasus yang sering ditangani",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  child: Text(
                    "Perdata",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  child: Text(
                    "Sengketa Tanah",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                ),
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
                  onPressed: () {},
                  child: Text(
                    "Konsultasi",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sewa Pengacara", style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 51, 109)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )))),
        ],
      )),
    );
  }
}
