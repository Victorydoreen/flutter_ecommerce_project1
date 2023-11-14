import 'package:flutter/material.dart';
// import 'package:flutter_login/login_screen.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 42, 165),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "images/45.png",
                height: 250,
              ),
            ),
            SizedBox(height: 20), // Added space between image and text

            Container(
              margin: EdgeInsets.only(top: 10), // Adjusted margin
              child: Text(
                "Order your fashionable attires",
                style: TextStyle(
                  color: Color.fromARGB(255, 242, 42, 165),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 20), // Added space between text and button

            SizedBox(
              height: 50,
              width: 200,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                 child: Ink(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Reduced padding
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 242, 42, 165),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
