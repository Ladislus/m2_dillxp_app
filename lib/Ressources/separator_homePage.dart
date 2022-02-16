import 'package:flutter/material.dart';

class Separator_HomePage extends StatelessWidget{
  final String titre;
  final double paddingTop;

  const Separator_HomePage(this.paddingTop,this.titre);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25,paddingTop,0,0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(titre.toUpperCase(),
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
            ),
          ],
        ),
      ),
    );
  }

}