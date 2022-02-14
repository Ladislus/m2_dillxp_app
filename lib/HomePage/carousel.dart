import 'package:flutter/material.dart';

class Carousel extends StatelessWidget{

  final List<String> images;
  final List<String> nom_films;
  final List<double> notes_Imdb;

  const Carousel(this.images, this.nom_films, this.notes_Imdb);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: SizedBox(
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
    );
  }

}