import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:intl/intl.dart';

class TestPage extends StatefulWidget {
  const TestPage({ Key? key}) : super(key: key);
  @override
  _TestPage createState() => _TestPage();

}

class _TestPage extends State<TestPage>{
  String firstName = "";
  String lastName = "";
  String date = "";
  String email = "";
  String number_Phone = "";
  String password = "";
  String confirmPassword = "";


  bool _checkboxpub = true;
  bool _show_hide_password = true;


  TextEditingController dateinput = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Les textFormField c super youpi"),
      ),
      body: Column(
        children:  [
          //checkboxstp(),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (String? value) {
                    return null;
                  },
                  onSaved: (String? value) {
                    firstName = value.toString();
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(Icons.person),
                    hintText: "Your first name ? ",
                    labelText: "First Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                ),
                TextFormField(
                  validator: (String? value) {
                    return null;
                  },
                  onSaved: (String? value) {
                    lastName = value.toString();
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(Icons.person),
                    hintText: "Your last name ? ",
                    labelText: "Last Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                ),
                TextFormField(
                  readOnly: true,
                  controller: dateinput,
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: new DateTime.now(),
                        firstDate: new DateTime(2016),
                        lastDate: new DateTime(2023)
                    );
                    if (picked != null) {
                      date = DateFormat('dd-MM-yyyy').format(picked);
                      dateinput.text = date;
                    }
                    else {
                      print("Date is not selected");
                    }
                  },
                  validator: (String? value) {
                    if (value == null) {
                      return "Date de naissance non sélectionné";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    date = value.toString();
                  },
                  decoration: InputDecoration(
                    //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                    suffixIcon: Icon(Icons.calendar_today),
                    hintText: "Your Date of Birth ? ",
                    labelText: "Date of birth",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    //contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    return null;
                  },
                  onSaved: (String? value) {
                    email = value.toString();
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(Icons.mail),
                    hintText: "Your email ? ",
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                ),
                TextFormField(
                  validator: (String? value) {
                    return null;
                  },
                  onSaved: (String? value) {
                    number_Phone = value.toString();
                  },
                  decoration: InputDecoration(
                    //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                    suffixIcon: Icon(Icons.call),
                    hintText: "Your number ? ",
                    labelText: "Number Phone",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                ),
                TextFormField(
                  obscureText: true,
                  controller: _pass,
                  validator: (String? value) {
                    return null;
                  },
                  onSaved: (String? value) {
                    password = value.toString();
                  },
                  decoration: InputDecoration(
                    //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                    suffixIcon: Icon(Icons.password),
                    hintText: "Your PWD ? ",
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),


                  ),
                ),

                TextFormField(
                  obscureText: true,
                  validator: (String? value) {
                    if (_pass.text != value) {
                      return "Pas le même mdp";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    confirmPassword = value.toString();
                  },
                  decoration: InputDecoration(
                    //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                    suffixIcon: Icon(Icons.password),
                    hintText: "Your PWD ? ",
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    //contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  ),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  secondary: const Icon(Icons.warning_outlined),
                  value: _checkboxpub,
                  onChanged: (bool? bool) {
                    setState(() {
                      _checkboxpub = bool!;
                    });
                  },
                  checkColor: Colors.black,
                  activeColor: Colors.red,
                  title: const Text("En cochant cette case, vous certifiez avoir lu et accepté les conditions générales d'utilisation "),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(color: Colors.red, width: 1.0),
                      textStyle:  const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        developer.log(firstName);
                        developer.log(lastName);
                        developer.log(date);
                        developer.log(email);
                        developer.log(number_Phone);
                        developer.log(password);
                        developer.log(confirmPassword);
                        developer.log(_checkboxpub.toString());
                      }
                    }, child: const Text("S'INSCRIRE",
                  style: TextStyle(color: Colors.black),
                )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*class CGU extends StatelessWidget with State<TestPage>{

}*/

