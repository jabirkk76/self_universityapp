import 'package:flutter/material.dart';
import 'package:self_universityapp/screens/bottomnav.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 833.5,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images.png'), fit: BoxFit.fill)),
    ));
  }

  void splash() async {
    Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return const BottomNav();
    }));
  }
}
