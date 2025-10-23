import 'registrasi.dart';
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
              Image.asset("gambar/Logo.png", height: 150),
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
          SizedBox(height: 20),
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
          const SizedBox(height: 40),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.check_box_outline_blank),
              Text("Keep me logged in"),
            ],
          ),

          const SizedBox(height: 25),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 80, 136, 233),
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text("Login", style: TextStyle(fontSize: 18, color: Colors.white)),
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Belum punya akun?"),
              TextButton(onPressed: () {Navigator.pushReplacementNamed(context, "/registrasi");}, child: Text(" Daftar disini", style: TextStyle(color: Colors.blue),),)
              
            ],
          ),

          const SizedBox(height: 600),
        ],
      ),
    );
  }
}
