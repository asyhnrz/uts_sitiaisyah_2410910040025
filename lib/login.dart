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
            Image.asset("gambar/Logo.png"),
            Column(
              children: [
                Text("LKS"),
                Text("MART"),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,)
        ],
      ),
    );
  }
}