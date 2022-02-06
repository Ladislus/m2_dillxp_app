import 'package:flutter/material.dart';
import 'package:test_dill/constants.dart';

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}