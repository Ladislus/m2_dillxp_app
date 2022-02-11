import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as developer;
import 'package:intl/intl.dart';
import 'package:test_dill/constants.dart';
import 'package:test_dill/drawer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key}) : super(key: key);
  @override
  _RegisterPage createState() => _RegisterPage();

}

class _RegisterPage extends State<RegisterPage>{
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
      //drawer: CustomDrawer(),
      appBar: AppBar(
        actions: [
          Container(
            width: 80,
            child: SvgPicture.asset('images/logo-cinemas-studio-appbar.svg',
            fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0,0, 20,10))
        ],
        //title: Text("Les textFormField c super youpi"),
        backgroundColor: rouge_appbar,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "Inscription".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              //checkboxstp(),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal :8,vertical :8),
                      child: TextFormField(
                        validator: (String? value) {
                          if(value == ""){
                            return "Prénom non renseigné";
                          }
                          return null;
                        },
                        onSaved: (String? value) {
                          firstName = value.toString();
                        },
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          suffixIcon: Icon(Icons.person),
                          hintText: "Quel est votre prénom ? ",
                          labelText: "Prénom",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: TextFormField(
                        validator: (String? value) {
                          if(value == ""){
                            return "Nom non renseigné";
                          }
                          return null;
                        },
                        onSaved: (String? value) {
                          lastName = value.toString();
                        },
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          suffixIcon: Icon(Icons.person),
                          hintText: "Quel est votre nom ? ",
                          labelText: "Nom",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: TextFormField(
                        readOnly: true,
                        controller: dateinput,
                        onTap: () async {
                          DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: new DateTime.now(),
                              firstDate: new DateTime(1900),
                              lastDate: new DateTime.now()
                          );
                          if (picked != null) {
                            date = DateFormat('dd-MM-yyyy').format(picked);
                            dateinput.text = date;
                          }
                        },
                        validator: (String? value) {
                          if (value == "") {
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
                          hintText: "Quel est votre date de naissance ? ",
                          labelText: "Date de naissance",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
                          border: UnderlineInputBorder(),
                          suffixIcon: Icon(Icons.mail),
                          hintText: "Quel est votre email ? ",
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: TextFormField(
                        validator: (String? value) {
                          const pattern = r'^((\+)33|0)[1-9](\d{2}){4}$';
                          final regExp = RegExp(pattern);
                          if(!regExp.hasMatch(value!)){
                            return "Numéro de téléphone non conforme";
                          }
                          return null;
                        },
                        maxLength: 10,
                        onSaved: (String? value) {
                          number_Phone = value.toString();
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                          suffixIcon: Icon(Icons.call),
                          hintText: "Quel est votre numéro de téléphone ? ",
                          labelText: "Téléphone",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        controller: _pass,
                        validator: (String? value) {
                          String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                          final RegExp regExp = RegExp(pattern);
                          if(!regExp.hasMatch(value!)) {
                            return "Le mot de passe doit contenir au moins 8 caractères dont minimum une majuscule, une minuscule, une chiffre, et un caractère spécial";
                          }
                          return null;
                        },
                        onSaved: (String? value) {
                          password = value.toString();
                        },
                        decoration: InputDecoration(
                          //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                          suffixIcon: Icon(Icons.password),
                          hintText: "Quel est votre mot de passe ? ",
                          labelText: "Mot de passe",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          errorMaxLines: 3,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        validator: (String? value) {
                          if (_pass.text != value) {
                            return "Le mot de passe n'est pas le même que le champs du dessus";
                          }
                          return null;
                        },
                        onSaved: (String? value) {
                          confirmPassword = value.toString();
                        },
                        decoration: InputDecoration(
                          //border: InputBorder(borderSide: BorderSide(width: 1.0, color: Color(0xFFDFDFDF))),
                          suffixIcon: Icon(Icons.password),
                          hintText: "Veuillez retaper votre mot de passe",
                          labelText: "Mot de passe",
                          labelStyle: TextStyle(
                            color: placeholder_color,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: rouge_principal, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          errorMaxLines: 2,
                        ),
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
                      activeColor: rouge_principal,
                      title: const Text(
                        "En cochant cette case, vous certifiez avoir lu et accepté les conditions générales d'utilisation ",
                        style: TextStyle(
                          fontSize: 9.0,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(100, 50),
                        padding: EdgeInsets.fromLTRB(40,20,40,20),
                        side: BorderSide(color: rouge_principal, width: 2.5),
                        textStyle: TextStyle(
                          color: rouge_principal,
                          fontWeight: FontWeight.bold,
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
                      },
                      child: Text("S'inscrire".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          //fontSize: 24,
                        ),
                      ),
                    ),
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

