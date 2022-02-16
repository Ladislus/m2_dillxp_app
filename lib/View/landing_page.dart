import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' as svg_test;

import '../Ressources/constants.dart';

class LandingPage extends StatelessWidget{

  @override
  Widget build( context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          svg_test.SvgPicture.asset(
            'images/fond_landingPage.svg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 90),
                    child: svg_test.SvgPicture.asset(
                      'images/logo-cinemas-studio.svg',
                      height: 135,
                      width: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 50,top: 25),
                    child: Transform.rotate(
                      angle: 11*pi/6,
                      child: Image.asset(
                        'images/image_2.png',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Transform.rotate(
                      angle: pi/6,
                      child: svg_test.SvgPicture.asset(
                        'images/movie-cinema-svgrepo-com.svg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 25,top: 60),
                    child: Text(
                        " Bienvenue dans l'Application des cinémas Studio !".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Réservez vos places sur mobile".toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                    ),
                  ),
                ],
              ),
              Container(
                height: 5,
                width: double.infinity,
                color: rouge_principal,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                            "/login_form");
                      },
                      child: Text(
                        'Connexion'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        elevation: 5,
                        padding: EdgeInsets.fromLTRB(40,20,40,20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 2.5, color: rouge_principal),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                            "/register");
                      },
                      child: Text(
                        'Inscription'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        elevation: 5,
                        padding: EdgeInsets.fromLTRB(40,20,40,20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 2.5, color: rouge_principal),
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 12, right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/movies");
                    },
                    child: Text(
                      "Continuer sans Connexion".toUpperCase(),
                      style: TextStyle(
                          color: rouge_principal,
                          fontWeight: FontWeight.w900
                      ),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      ),
    );

  }

}