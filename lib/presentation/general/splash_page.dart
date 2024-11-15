import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../auth/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Assets.lottie.apple.lottie(width: 200, height: 200) // ini kalo mau manggil lottie,
            // child: Assets.icons.debit.svg -> ini kalo mau manggil svg,
            // child: SvgPicture.asset(Assets.icons.debit.path) -> ini juga bisa kalo mau manggil svg, sama kayak image pake path di belakangnya,
            // child: Image.asset(Assets.images.logo.path) -> ini kalo mau manggil image, harus make path di core
            // child: Assets.images.f1.image() -> ini kalo mau manggil image, tampa make path
          ),
        ],
      ),
    );
  }
}
