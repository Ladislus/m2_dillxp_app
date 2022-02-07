import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_dill/constants.dart';

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   width: double.infinity,
          //   height: 150,
          //   color: Colors.greenAccent,
          //   child: Center(
          //   child: Text('150'),
          //   ),
          // ),
          Container(
            //color: Colors.grey[200],
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Connexion",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 35)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: rouge_principal, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        hintText: 'PlaceHolder'.toUpperCase(),
                        hintStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold
                        ),
                        suffixIcon: Icon(
                          Icons.account_circle_outlined,
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: rouge_principal, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        hintText: 'PlaceHolder'.toUpperCase(),
                        hintStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                        )
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 35)),
                OutlinedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Connexion'.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 5,
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.white,
                    side: BorderSide(width: 2.5, color: rouge_principal),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
              ],
            ),
          ),


        ],
      ),
    );
  }
}