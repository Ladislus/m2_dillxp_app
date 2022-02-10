import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_dill/drawer.dart';

import 'constants.dart';

class HomePage extends StatelessWidget{
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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/affiche_belle.jpg',
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/violet_film.jpg',
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/josee_film.jpg',
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/maquia_film.jpg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }


  Widget buildCard() => Container(
    width: 200,
    height: 200,
    color: Colors.red,
  );

}