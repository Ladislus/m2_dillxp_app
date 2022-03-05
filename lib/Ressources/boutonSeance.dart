import 'package:flutter/material.dart';

class BoutonSeance extends StatefulWidget{
  final bool isSelected;

  const BoutonSeance(this.isSelected);

  _BoutonSeance createState() => _BoutonSeance(this.isSelected);

}

class _BoutonSeance extends State<BoutonSeance>{
  bool _isSelected;

  _BoutonSeance(this._isSelected);

  void _selectionSeance(){
    setState(() {
      if (_isSelected){
        _isSelected = false;
      }else{
        _isSelected = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectionSeance,
      child: Container(
        color: _isSelected ? Colors.lightBlueAccent : Colors.white,
        margin: EdgeInsets.only(left: 15, bottom: 10),
        child: Row(
          children: [
            Text("16h30"),
            Icon(_isSelected ? Icons.movie : Icons.movie_outlined, color: Colors.lightGreen[800]),
          ],
        ),
      ),
    );
  }


}