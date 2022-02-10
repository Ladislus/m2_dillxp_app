import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_dill/constants.dart';
import 'package:test_dill/drawer.dart';

class Connexion extends StatelessWidget {
  const Connexion({Key? key}) : super(key: key);

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
          //Padding(padding: EdgeInsets.fromLTRB(0,0, 20,10))
        ],
        backgroundColor: rouge_appbar,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //color: Colors.grey[200],
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Connexion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: rouge_principal, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        hintText: 'email'.toUpperCase(),
                        hintStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold
                        ),
                        suffixIcon: const Icon(
                          Icons.account_circle_outlined,
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: rouge_principal, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        hintText: '**********'.toUpperCase(),
                        hintStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold
                        ),
                        suffixIcon: const Icon(
                          Icons.password,
                        )
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 35)),
                OutlinedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Connexion'.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 5,
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.white,
                    side: BorderSide(width: 2.5, color: rouge_principal),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}