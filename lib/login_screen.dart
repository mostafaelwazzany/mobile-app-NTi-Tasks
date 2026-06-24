import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text("Log in& Sign up Page"),
      ),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/profile.png', height: 100, fit: BoxFit.contain),
          datafield("Email"),
          SizedBox(height: 15),
          datafield("Password"),
         SizedBox(height: 15),
          appButton("sign up"),
           SizedBox(height: 15),
           appButton("login")
        ],
      ),
    ));
  }

/////////////////////// Widgets Mehods ///////////////////
Widget datafield(String lable) {
  return Container(
   
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: TextField(
      decoration: InputDecoration(
        labelText: lable,
        border: const OutlineInputBorder(),
       
      )
    ),
  );
}
  Widget appButton(String buttomname) {
    return GestureDetector(
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        width: 360,
        child: Center(child: Text(buttomname)),
      ),
    );
  }
}