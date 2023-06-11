import 'package:flutter/material.dart';

class DecorationFunction {


  InputDecoration textFormFieldDecorations(String ifade1, String ifade2) {
    return InputDecoration(
        labelText: ifade1,
        labelStyle: const TextStyle(color: Colors.blueGrey),
        hintText: ifade2,
        hintStyle: const TextStyle(color: Colors.blueGrey),
        border: const OutlineInputBorder());
  }



  void BarSnacke(BuildContext context, String mesaj) {
    final snackBar = SnackBar(
      content: Text(mesaj),
      duration: Duration(seconds: 15),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }



}
