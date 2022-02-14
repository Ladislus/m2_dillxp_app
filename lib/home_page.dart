import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_dill/drawer.dart';

import 'constants.dart';

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
              padding: EdgeInsets.fromLTRB(25,25,0,12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("à voir Aujourd'hui".toUpperCase(),
                      style: TextStyle(fontWeight:  FontWeight.bold)),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFe20613),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      height: 3,
                      width: 65,
                      //color: rouge_principal,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.separated(
                  itemCount : images.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: SizedBox(
                        height: 400,
                        width: 250,
                        child: Column(
                            children: [
                              Container(
                                child: Expanded(
                                    child: Image.asset(
                                        images[index]
                                    )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0,10,0,10),
                                width: 250,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 175,
                                      padding: EdgeInsets.only(left: 10),
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
                                      child: Text(notes_Imdb[index].toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5,0,5,0),
                                      child: Image.asset(
                                          'images/logo_imdb.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      // child: Text("IMDB",
                                      //     style: TextStyle(
                                      //       fontWeight: FontWeight.bold,
                                      //       backgroundColor: Colors.orange,
                                      //     )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                  const VerticalDivider(
                    width: 5,
                    color: Colors.white,
                  ),
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