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
      body: Container(
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
            SizedBox(
              width: 350,
              height: 350,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}