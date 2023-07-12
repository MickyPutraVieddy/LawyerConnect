import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomba_gemastik/screen/daftarscreen/login.dart';
import 'package:lomba_gemastik/screen/daftarscreen/register.dart';
import 'package:lomba_gemastik/screen/dashboard/dashboard.dart';
import 'package:lomba_gemastik/screen/slider/sliders.dart';

void main() => runApp(Mains());

class Mains extends StatelessWidget {
  const Mains({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/page2',
          page: () => Loginpages(),
        ),
        GetPage(
          name: '/page3',
          page: () => Register(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => Dashboard(),
        )
      ],
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
