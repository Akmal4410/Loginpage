import 'package:flutter/material.dart';
import 'package:projects/main.dart';
import 'package:projects/screens/screen_home.dart';
import 'package:projects/screens/screen_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/whatsapp-logo.png",
          height: 100,
        ),
      ),
    );
  }

  Future<void> gotoLoginScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  Future<void> checkLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    final logedIn = prefs.getBool(LOGGEDIN_KEY);
    if (logedIn == null || logedIn == false) {
      gotoLoginScreen();
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }
}
