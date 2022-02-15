import 'package:flutter/material.dart';

import 'constants.dart';

class CustomDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        children: [

          ListTile(
            title: const Text('Programmation'),
            onTap: () {
              Navigator.pushNamed(context,
                  "/movies");
            },
          ),
          ListTile(
            title: const Text('Mes Billets'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Portefeuille'),
            onTap: () {
            },
          ),
          Container(
            height: 5,
            width: 1,
            color: rouge_principal,
          ),
          ListTile(
            title: const Text('Profil'),
            onTap: () {
              Navigator.pushNamed(context, "/profil");

              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Deconnexion'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }

}