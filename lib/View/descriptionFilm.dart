import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_dill/Ressources/constants.dart';
import 'package:test_dill/Ressources/drawer.dart';
import 'dart:developer' as developer;

import 'package:test_dill/Ressources/separator_homePage.dart';


class DescriptionFilm extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: appbar(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("images/josee_film.jpg"),
              ),
              Container(
                padding: EdgeInsets.only(left: 25 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Josée, le Tigre et les Poissons",
                        style: TextStyle(color: rouge_appbar, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: ""),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("DE Kotaro Tamura ".toUpperCase()),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Avec Acteur 1, Acteur 2 et Acteur 3".toUpperCase()),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: RichText(text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: "Genre : ", style: TextStyle(fontWeight: FontWeight.bold) ),
                          TextSpan(text: "Animation \n"),
                          TextSpan(text: "Nationnalité : ", style: TextStyle(fontWeight: FontWeight.bold) ),
                          TextSpan(text: "Japonnaise \n"),
                          TextSpan(text: "Année de sortie : ", style: TextStyle(fontWeight: FontWeight.bold) ),
                          TextSpan(text: "2021 \n"),
                          TextSpan(text: "Durée : ", style: TextStyle(fontWeight: FontWeight.bold) ),
                          TextSpan(text: "1h38 min \n"),
                          TextSpan(text: "Version : ", style: TextStyle(fontWeight: FontWeight.bold) ),
                          TextSpan(text: "VOSTFR \n"),
                          TextSpan(text: "Public : ", style: TextStyle(fontWeight: FontWeight.bold) ),
                          TextSpan(text: "Tout Public"),
                        ]
                      )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xFFe20613),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: 3,
                    width: 125,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, bottom: 10, left: 10),
                child: Text("Kumiko, paraplégique depuis l’enfance, vit avec sa grand-mère, qui la sur-protège du monde extérieur. Elle sort peu et s’est créé son propre univers, aidée par la lecture, sa fascination pour la mer et son imagination débordante. Elle demande qu’on l’appelle Josée, du nom d'une jeune héroïne d’un roman de Sagan. Tsuneo, brillant étudiant en biologie marine, aimerait poursuivre ses études au Mexique où il pourrait vivre son rêve, plonger dans les eaux tropicales. Pour cela il lui faut de l’argent et il cherche donc des petits boulots. Un soir, il tombe littéralement sur Josée et la sauve d’une horrible chute. Suite à cette rencontre accidentelle, la grand-mère de Josée engage Tsuneo comme aide-soignant. Josée se révèle autoritaire et têtue, mais Tsunéo est d’une grande patience. Ils apprennent à se connaître et même à s’apprécier. Un jour, il emmène Josée à la mer… "),
              ),
              Container(
                padding: EdgeInsets.only(right: 15, bottom: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xFFe20613),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: 3,
                    width: 125,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 25 ),
                  child: Text(
                    "Séances".toUpperCase(),
                    style: TextStyle(color: rouge_appbar, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: ""),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xFFe20613),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: 3,
                    width: 125,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 25 ),
                  child: Text(
                    "Avis".toUpperCase(),
                    style: TextStyle(color: rouge_appbar, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: ""),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}