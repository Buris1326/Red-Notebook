import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kirmizidefter/gecisEkranlari/sayfaKategori.dart';


class NavigationFunction {


  //Bu fonksiyon ekranın sol üst köşesinde bulunur, basıldığında geri gitmeye yarar.


  IconButton geriNavigasyon(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }


//Bu fonksiyon elevated butona parametre atayarak istenen yere gitmeye yarar

  Container elevatedButton( Color renk ,Widget sayfa, String icerik,BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: renk),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => sayfa));
        },
        child: Text(icerik),
      ),
    );
  }

  IconButton sayfaKategoriGecis (context){
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SayfaKategori())
        );
      },
    );
  }


}
