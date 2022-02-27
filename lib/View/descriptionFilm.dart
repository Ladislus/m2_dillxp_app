import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_dill/Ressources/constants.dart';
import 'package:test_dill/Ressources/drawer.dart';
import 'dart:developer' as developer;


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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Josée, le Tigre et les Poissons",
                  style: TextStyle(color: rouge_appbar, fontSize: 34, fontWeight: FontWeight.bold, fontFamily: ""),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, bottom: 10, left: 10),
                child: Text("Kumiko, paraplégique depuis l’enfance, vit avec sa grand-mère, qui la sur-protège du monde extérieur. Elle sort peu et s’est créé son propre univers, aidée par la lecture, sa fascination pour la mer et son imagination débordante. Elle demande qu’on l’appelle Josée, du nom d'une jeune héroïne d’un roman de Sagan. Tsuneo, brillant étudiant en biologie marine, aimerait poursuivre ses études au Mexique où il pourrait vivre son rêve, plonger dans les eaux tropicales. Pour cela il lui faut de l’argent et il cherche donc des petits boulots. Un soir, il tombe littéralement sur Josée et la sauve d’une horrible chute. Suite à cette rencontre accidentelle, la grand-mère de Josée engage Tsuneo comme aide-soignant. Josée se révèle autoritaire et têtue, mais Tsunéo est d’une grande patience. Ils apprennent à se connaître et même à s’apprécier. Un jour, il emmène Josée à la mer… "),
              ),
            ],
          )
        ],
      ),
    );
  }

}