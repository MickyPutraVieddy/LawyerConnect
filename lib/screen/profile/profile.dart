import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Profile Saya",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: ListTile(
              subtitle: Text(
                "dafa27@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset('lib/image/screenslide/logo/Avatar.png'),
              title: Text(
                "Daffa Naufal Fajriansyah",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: Text("Edit"),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 380,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Align(
              child: Text(
                "Umum",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          SizedBox(
            width: 380,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
              height: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.settings),
                    style: ElevatedButton.styleFrom(primary: Colors.grey)),
                SizedBox(
                  width: 10,
                ),
                Text("Pengaturan"),
                SizedBox(
                  width: 190,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.help_outline),
                    style: ElevatedButton.styleFrom(primary: Colors.grey)),
                SizedBox(
                  width: 10,
                ),
                Text("Bantuan"),
                SizedBox(
                  width: 210,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.shield),
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Privasi & Keamanan"),
                SizedBox(
                  width: 140,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 310,
          ),
          Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.output),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Keluar", style: TextStyle(fontSize: 18))
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
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
