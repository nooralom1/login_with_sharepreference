import 'package:flutter/material.dart';
import 'package:login_with_sharepreference/global_widgets/global_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomGlobalText(
          text: 'Home',
          textColor: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color(0xff99b3e6),
      body: const Center(
        child: Icon(Icons.home,color: Colors.white,size: 70,),
      ),
    );
  }
}
