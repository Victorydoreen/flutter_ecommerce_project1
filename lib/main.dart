import 'package:flutter/material.dart';
import 'package:gbstore_fashions/splash_screen.dart';
// import 'package:flutter_login/home_Page.dart';
// import 'package:flutter_login/splash_screen.dart';
// import 'package:flutter_login/home/main_food_page.dart';
// import 'package:flutter_login/login_screen.dart';
// import 'package:flutter_login/signup_screen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        // routes: {
        // "/":(context) => SplashScreen(),
        //   "home_page":(context) => HomePage();
        // },
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I think Flutter is quite interesting'),
        centerTitle: true,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.pink[400],
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon:const Icon(
            Icons.mail,
          ),
          label: Text('mail me'),
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.pinkAccent, // Use backgroundColor instead of primary
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Text('click!'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
