import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_dill/drawer.dart';

import 'constants.dart';

class HomePage extends StatelessWidget{
  final List<String> images = <String>['images/affiche_belle.jpg','images/violet_film.jpg','images/josee_film.jpg','images/maquia_film.jpg'];
  final List<String> nom_films = <String>['Belle','Violet Evergarden','Josée, le tigre ou les poissons','Maquia : When the promised flower bloom'];
  final double note_Imdb = 8.9;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: [
          Container(
            width: 80,
            child: SvgPicture.asset(
              'images/logo-cinemas-studio-appbar.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0,0, 20,10))
        ],
        backgroundColor: rouge_appbar,
      ),
      body: ListView(
        children: [ Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(25,25,0,0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text("à voir Aujourd'hui".toUpperCase(),
                        style: TextStyle(fontWeight:  FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Container(
                        height: 3,
                        width: 65,
                        color: rouge_principal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 400,
              child: ListView.separated(
                  itemCount : images.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      elevation: 3,
                      child: SizedBox(
                        height: 400,
                        width: 250,
                        child: Column(
                            children: [
                              Expanded(
                                  child: Image.asset(
                                      images[index]
                                  )
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Container(
                                width: 250,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 175,
                                      child: Text(nom_films[index],
                                      overflow: TextOverflow.fade,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Text(note_Imdb.toString(),
                                      style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                    Container(
                                      child: Text("IMDB",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: Colors.orange,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Padding(
                      padding: EdgeInsets.only(right: 15)),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25,35,0,0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text("Films à L'affiche".toUpperCase(),
                            style: TextStyle(fontWeight:  FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Container(
                        height: 3,
                        width: 65,
                        color: rouge_principal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 400,
              child: ListView.separated(
                itemCount : images.length,
                itemBuilder: (BuildContext context, int index){
                  return SizedBox(
                    height: 400,
                    child: Column(
                      children: [
                        Expanded(
                            child: Card(
                              child: Image.asset(
                                  images[index]
                              ),

                              elevation: 5,
                            )
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Padding(
                    padding: EdgeInsets.only(right: 15)),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 45)),
          ],
        ),
      ],
      ),

    );
  }

}