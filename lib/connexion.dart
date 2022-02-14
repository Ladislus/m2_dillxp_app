import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_dill/constants.dart';
import 'package:test_dill/drawer.dart';
import 'dart:developer' as developer;

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  _Connexion createState() => _Connexion();
}

class _Connexion extends State<Connexion>{

  final _formKey = GlobalKey<FormState>();
  String email = "";

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
                Form(
                  key : _formKey,
                  child : Column(
                    children: [
                      Padding(

                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: TextFormField(
                          validator: (String? value) {
                            if(EmailValidator.validate(value!)){
                              return null;
                            }
                            return "Email non valide";
                          },
                          onSaved: (String? value) {
                            email = value.toString();
                          },
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
                        child: TextFormField(
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
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            developer.log("Je suis connecté");
                            Navigator.pushNamed(context, "/movies");
                          }
                        },
                        child: Center(
                          child: Text(
                            'Connexion'.toUpperCase(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.white,
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: BorderSide(width: 2.5, color: rouge_principal),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}