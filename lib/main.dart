import 'package:flutter/material.dart';
import 'package:loginpage/login.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
        navigateAfterSeconds: new LoginPage(),
        title: new Text('Welcome In SplashScreen'),
        image: new Image.network('https://res.cloudinary.com/teepublic/image/private/s--Vny9nNHu--/t_Preview/b_rgb:ffffff,c_lpad,f_jpg,h_630,q_90,w_1200/v1585726530/production/designs/8796655_0.jpg'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.blue);

  }
}
