
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_with_sharepreference/Views/authentication/login/login.dart';
import 'package:login_with_sharepreference/Views/screens/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    whereToGO();
    super.initState();
  }

  void whereToGO() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool("login");
    Timer(const Duration(seconds: 3), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Login()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 35,
          child: Icon(
            Icons.person_sharp,
            color: Colors.blue,
            size: 50,
          ),
        ),
      ),
    );
  }
}
