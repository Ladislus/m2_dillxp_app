import 'package:flutter/material.dart';
import 'package:test_dill/Ressources/constants.dart';
import 'package:test_dill/Ressources/drawer.dart';
import 'package:flutter_svg/svg.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilPage> {
  bool _recoitNotifSortie = true;
  bool _recoitNotifSeance = true;
  String _nouveaupsw = "";
  String _nouveaupsw2 = "";
  String _password = "";

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Impossible'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Les deux mots de passe ne sont pas identiques.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok, je corrige !'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showPswInput() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Veuillez confirmer avec votre mot de passe actuel.'),
                TextField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: "Mot de passe actuel"),
                  onChanged: (String? value) {
                    setState(() {
                      _password = value!;
                      print(_password);
                    });
                  },
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Valider'),
              onPressed: () {
                // Appel a l'api pour changer le mot de passe
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: appbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Titre "Profil"
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      "Profil",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: rouge_appbar),
                    ),
                  ),
                ],
              ),
              // Séparateur droite
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: FractionallySizedBox(
                        widthFactor: 0.25,
                        child: Divider(
                          color: rouge_appbar,
                          thickness: 10,
                        ),
                      ))),
              //Title "Gestion des notifs"
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Text(
                        "Gestion des notifications",
                        style: TextStyle(color: rouge_appbar, fontSize: 25),
                      )),
                ],
              ),
              //Premiere checkbox
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Checkbox(
                          activeColor: rouge_principal,
                          value: _recoitNotifSortie,
                          onChanged: (bool? checked) {
                            setState(() {
                              _recoitNotifSortie = checked!;
                            });
                          })),
                  const Text("Être informé des nouvelles sorties")
                ],
              ),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Checkbox(
                          activeColor: rouge_principal,
                          value: _recoitNotifSeance,
                          onChanged: (bool? checked) {
                            setState(() {
                              _recoitNotifSeance = checked!;
                            });
                          })),
                  const Text("Rappel des séances proches")
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: FractionallySizedBox(
                        widthFactor: 0.25,
                        child: Divider(
                          color: rouge_appbar,
                          thickness: 10,
                        ),
                      ))),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Text(
                        "Changement du mot de passe",
                        style: TextStyle(color: rouge_appbar, fontSize: 25),
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  obscureText: true,
                  onChanged: (String? value) {
                    setState(() {
                      _nouveaupsw = value!;
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: rouge_principal, width: 1.0),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: rouge_appbar, width: 1.0),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      hintText: 'nouveau mot de passe'.toUpperCase(),
                      hintStyle: TextStyle(
                          color: placeholder_color,
                          fontWeight: FontWeight.bold),
                      suffixIcon: const Icon(
                        Icons.password,
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  obscureText: true,
                  onChanged: (String? value) {
                    setState(() {
                      _nouveaupsw2 = value!;
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: rouge_principal, width: 1.0),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: rouge_appbar, width: 1.0),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      hintText: 'confirmation du mot de passe'.toUpperCase(),
                      hintStyle: TextStyle(
                          color: placeholder_color,
                          fontWeight: FontWeight.bold),
                      suffixIcon: const Icon(
                        Icons.password,
                      )),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: OutlinedButton(
                      onPressed: () {
                        print(_nouveaupsw == _nouveaupsw2);
                        if (_nouveaupsw2 == _nouveaupsw) {
                          _showPswInput();
                        } else {
                          _showMyDialog();
                        }
                      },
                      child: Text(
                        'Valider'.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                        elevation: 2,
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 2.5, color: rouge_principal),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
