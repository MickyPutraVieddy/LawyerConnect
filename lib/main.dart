import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomba_gemastik/screen/Asuransi/daftarasuransi.dart';
import 'package:lomba_gemastik/screen/Asuransi/detailasuransi.dart';
import 'package:lomba_gemastik/screen/Asuransi/metode.dart';
import 'package:lomba_gemastik/screen/Asuransi/total.dart';
import 'package:lomba_gemastik/screen/Asuransi/transfer.dart';
import 'package:lomba_gemastik/screen/Detailscreen/detailpengecara.dart';
import 'package:lomba_gemastik/screen/Kasus/detailkasus.dart';
import 'package:lomba_gemastik/screen/daftarscreen/login.dart';
import 'package:lomba_gemastik/screen/daftarscreen/register.dart';
import 'package:lomba_gemastik/screen/dashboard/dashboard.dart';
import 'package:lomba_gemastik/screen/profile/profile.dart';
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
          name: '/pengacara1',
          page: () => pengacara1(),
        ),
        GetPage(
          name: '/pengacara2',
          page: () => pengacara2(),
        ),
        GetPage(
          name: '/pengacara3',
          page: () => pengacara3(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => Dashboard(),
        ),
        GetPage(
          name: '/kasus',
          page: () => detailkasus(),
        ),
        GetPage(
          name: '/daftarasuransi',
          page: () => Daftrasuransi(),
        ),
        GetPage(
          name: '/paid',
          page: () => Paidscreen(),
        ),
        GetPage(
          name: '/total',
          page: () => Totalscreen(),
        ),
        GetPage(
          name: '/transfer',
          page: () => Transferscreen(),
        ),
        GetPage(
          name: '/profile',
          page: () => Profilescreen(),
        ),
        GetPage(
          name: '/detailasuransi',
          page: () => Detailasuransi(),
        )
      ],
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
