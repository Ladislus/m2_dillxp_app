import 'package:flutter/material.dart';
import 'package:test_dill/View/connexion.dart';
import 'package:test_dill/View/home_page.dart';
import 'package:test_dill/View/landing_page.dart';

import 'package:test_dill/View/registerPage.dart';

import 'package:test_dill/View/profil_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: LandingPage()
    );
  }
}

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => LandingPage());
      case "/login_form":
        return MaterialPageRoute(builder: (context) => Connexion());
      case "/movies":
        return MaterialPageRoute(builder: (context) => HomePage());
      case "/register":
        return MaterialPageRoute(builder: (context) => RegisterPage());
      case "/profil":
        return MaterialPageRoute(builder: (context) => ProfilPage());

      default:
        return MaterialPageRoute(
            builder: (context) =>Scaffold(
              appBar: AppBar(title: Text("Error"), centerTitle: true),
              body: Center(
                child: Text("Page not found"),
              ),
            )
        );
    }
  }

}