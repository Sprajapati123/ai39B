import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),

          // Text("Email"),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hint: Text("abc@gmail.com"),
              filled: true,
              fillColor: Colors.blue.shade50,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            obscureText: visibility,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    visibility = !visibility;
                  });
                },
                icon: Icon(visibility== true
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              hint: Text("********"),
              filled: true,
              fillColor: Colors.blue.shade50,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
