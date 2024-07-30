import 'package:flutter/material.dart';
import 'package:login_with_sharepreference/Views/authentication/login/widgets/custom_txt_frm_fld.dart';
import 'package:login_with_sharepreference/Views/screens/Home.dart';
import 'package:login_with_sharepreference/global_widgets/global_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomGlobalText(
          text: 'Login',
          textColor: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 35,
                child: Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTxtFrmFld(
                labelText: 'Email',
                hintText: 'mr.noor165@gmail.com',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTxtFrmFld(
                labelText: 'Password',
                hintText: '***********',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  onPressed: () async {
                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool("login", true);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const CustomGlobalText(
                    text: 'Login',
                    textColor: Colors.white,
                    textSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
