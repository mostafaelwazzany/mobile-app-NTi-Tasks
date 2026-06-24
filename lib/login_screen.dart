import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appButton()
        ],
        )
      ),
    );
  }


  GestureDetector appButton() {
    return GestureDetector(
            onTap:null,
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
              color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          );
  }
}