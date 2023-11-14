import 'package:flutter/material.dart';
// import 'package:flutter_login/login_screen.dart';
import 'package:gbstore_fashions/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
           color: Colors.pink,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 750.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(height: 100.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              // image: NetworkImage(

                                  // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZsuxUrEVyvCmLYoM5BeyNUOts2akw1RFDYw&usqp=CAU"
                                  image: AssetImage(
                                    "images/login.png"

                                  ),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 250.0,
                      height: 40.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 250.0,
                      height: 40.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 250.0,
                      height: 40.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: 250.0,
                      height: 40.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text('Sign Up'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 242, 42, 165),
                          foregroundColor: Colors.black,
                          textStyle: TextStyle(
                            fontSize: 18.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        SizedBox(width: 5.0),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text('Login'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: SignUpScreen()));
