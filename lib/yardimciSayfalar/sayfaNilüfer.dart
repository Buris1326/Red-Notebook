//Tuzlu Yiyecek Tariflerinin Kullandığı Ortak Sayfa (Tarif Hazır Değil)




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gecisEkranlari/sayfaKategori.dart';

class sayfaNilufer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Üzgünüm Tarif Henüz Hazır Değil',
              style: TextStyle(
                //height: 12,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              )),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 300,
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SayfaKategori()));
              },
              icon: const Icon(Icons.sentiment_very_dissatisfied),
              color: Colors.red,
              iconSize: 400,
            ),
          ),
        ],
      )),
    );
  }
}
