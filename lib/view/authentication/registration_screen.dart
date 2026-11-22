import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(height: 100),

        Center(child: Text("Register",style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),)),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(child:  TextFormField(
              controller: fNameController,
              decoration: InputDecoration(
                hint: Text("first name"),
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
            ),),
            SizedBox(width: 10,),
            Expanded(child:  TextFormField(
              controller: lNameController,
              decoration: InputDecoration(
                hint: Text("lastname"),
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
            ),)
          ],
        ),
        SizedBox(height: 10,),
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
              icon: Icon(
                visibility == true ? Icons.visibility : Icons.visibility_off,
              ),
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
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("Sign up"),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text("Already have an account? Sign In")
      ]),
    );
  }
}
