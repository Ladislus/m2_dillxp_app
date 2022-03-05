import 'package:flutter/material.dart';

import 'constants.dart';

class Comment extends StatelessWidget{

  final double _top;
  final double _bottom;

  const Comment(this._top, this._bottom);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: _bottom, top: _top),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: RichText(text: TextSpan(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: "John Doe ", style: TextStyle(color: rouge_appbar, fontSize: 16, fontWeight: FontWeight.bold,), ),
                    const TextSpan(text: "Il y a 2 jours"),
                  ]
              )
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: rouge_appbar,
                      width: 1.5
                  ),
                )
            ),
            padding: const EdgeInsets.only(left: 5),
            margin: const EdgeInsets.only(left: 10, top: 15),
            child: const Text(
              "Bonjour, je trouve ce film fantastique ! j'ai étais SUBJUGÉ par les talents de ces acteurs, pourtant inconnus !\n \n Film À VOIR !! Foncez ;)",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}