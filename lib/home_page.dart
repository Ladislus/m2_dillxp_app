import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_dill/drawer.dart';

import 'constants.dart';

class HomePage extends StatelessWidget{
  final List<String> images = <String>['images/affiche_belle.jpg','images/violet_film.jpg','images/josee_film.jpg','images/maquia_film.jpg'];


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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(25,45,0,0),
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
                  return SizedBox(
                    height: 400,
                    child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                                  images[index]
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
        ],
      ),

    );
  }

}