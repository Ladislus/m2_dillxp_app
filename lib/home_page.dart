import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build( context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/test.png"), fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              //color: Colors.greenAccent,
              //child: Center(
              //child: Text('150'),
              //),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'images/logo-cinemas-studio.svg',
                  height: 135,
                  width: 135,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 50)),
                Transform.rotate(
                  angle: 11*pi/6,
                  child: Image.asset(
                    'images/image_2.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Transform.rotate(
                  angle: pi/6,
                  child: SvgPicture.asset(
                    'images/movie-cinema-svgrepo-com.svg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 50)),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 60)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    " Bienvenue dans l'Application des cinémas Studio !".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 25)),
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
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100,
                //color: Colors.greenAccent,
                //child: Center(
                //child: Text('100'),
                //),
              ),
            ),
            Container(
              height: 5,
              width: double.infinity,
              color: rouge_principal,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
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
                OutlinedButton(
                  onPressed: () {},
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Continuer sans Connexion".toUpperCase(),
                  style: TextStyle(
                      color: rouge_principal,
                      fontWeight: FontWeight.w900
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 40, 0, 0))
              ],
            ),
          ],
        ),
      ),
    );
  }

}