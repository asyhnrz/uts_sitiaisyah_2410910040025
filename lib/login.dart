import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showpassword = true;
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(width: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("gambar/Logo.png", height: 120),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LKS",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 80, 136, 233),
                    ),
                  ),
                  Text(
                    "MART",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 80, 136, 233),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),

          Text(
            "Sign In",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 4, 6, 10),
            ),
          ),
          Text("Enter your ID and password to sign"),

          SizedBox(height: 20),
          Text("Email:"),
          TextField(
            decoration: InputDecoration(
              hintText: "email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Text("Password:"),
          TextField(
            controller: _passwordcontroller,
            obscureText: _showpassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _showpassword = !_showpassword;
                  });
                },
                icon: Icon(
                  _showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                ),
              ),
              hintText: "Min 8 charachters",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
