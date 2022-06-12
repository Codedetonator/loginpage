import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 10),
            child: Text(
              "Hi,Welcome to login page",
              style: TextStyle(letterSpacing:2,fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 40,right: 30,left: 30,bottom: 10),
                child: TextField(
                  
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                      hintText: "User"),
                )),
          ),
               Center(
                 child: Container(
              margin: EdgeInsets.only(top: 10, right: 30, left: 30, bottom: 40),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      prefixIcon: Icon(Icons.password_rounded),
                      hintText: "Password"),
              ),),
               ),
               Center(
              child: ElevatedButton(
             onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>HomePage()),
              );
            },
            child: Text('login'),
          )),
        ],
      ),
    );
  }
}
