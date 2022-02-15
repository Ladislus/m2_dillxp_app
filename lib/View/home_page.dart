import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_dill/Ressources/carousel.dart';
import 'package:test_dill/Ressources/drawer.dart';
import 'package:test_dill/Ressources/separator_homePage.dart';

import '../Ressources/constants.dart';

class HomePage extends StatelessWidget{
  final List<String> images = <String>['images/affiche_belle.jpg','images/violet_film.jpg','images/josee_film.jpg','images/maquia_film.jpg'];
  final List<String> nom_films = <String>['Belle','Violet Evergarden','Josée, le tigre ou les poissons','Maquia : When the promised flower bloom'];
  final List<double> notes_Imdb = <double>[7.3,8.5,7.8,7.5];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: [
          Container(
            width: 80,
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: SvgPicture.asset(
              'images/logo-cinemas-studio-appbar.svg',
              fit: BoxFit.contain,
            ),
          ),
        ],
        backgroundColor: rouge_appbar,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Separator_HomePage(20.0,"à voir Aujourd'hui"),
              Carousel(images, nom_films, notes_Imdb),
              Separator_HomePage(0,"Film à l' affiche"),
              Carousel(images, nom_films, notes_Imdb),
            ],
          ),
        ],
      ),
    );
  }

}