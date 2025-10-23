import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(top: 300)),
            Image.asset("gambar/Logo.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LKS", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 80, 136, 233))),
                Text("MART", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 80, 136, 233)),),
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Sign In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 4, 6, 10))),
            ],
          ),
        )
        ],
      ),
    );
  }
}