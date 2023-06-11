//tatlı seçeneklerinin bulunduğu sayfanın kodlarını içerir

import 'package:kirmizidefter/functions/navigationFunction.dart';
import 'package:kirmizidefter/tatliTarifleri/amonyakliPasta.dart';
import 'package:kirmizidefter/tatliTarifleri/cikolataliKek.dart';
import 'package:kirmizidefter/tatliTarifleri/firinSutlac.dart';
import 'package:kirmizidefter/tatliTarifleri/lazBoregi.dart';
import 'package:kirmizidefter/tatliTarifleri/misirKeki.dart';
import 'package:kirmizidefter/tatliTarifleri/muhallebi.dart';
import 'package:kirmizidefter/tatliTarifleri/sarayMuhallebisi.dart';
import 'package:kirmizidefter/tatliTarifleri/starbucksKurabiye.dart';
import 'package:kirmizidefter/tatliTarifleri/surprizKurabiye.dart';
import 'package:kirmizidefter/tatliTarifleri/tahinliCorek.dart';
import 'package:kirmizidefter/tatliTarifleri/trilece.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaNesne.dart';
import 'package:kirmizidefter/tatliTarifleri/sutHelvasi.dart';
import 'package:flutter/material.dart';
import 'package:kirmizidefter/tatliTarifleri/havucluKek.dart';


class SayfaTatlilar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            leading: NavigationFunction().sayfaKategoriGecis(context),
            title: Text(
              'Tatlılar',
              style: sayfaNesne.butonMetintipi,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sutHelvasi()));
                            },
                            child: Text(
                              'Süt Helvası',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      sayfaNesne().elevatedButton("Saray Muhallebisi", context, SarayMuhallebisi()),
                      Expanded(child:
                      GestureDetector(
                        child: const Icon(
                          Icons.beach_access,
                          color: Colors.blue,
                          size: 36.0,
                        ),
                      ),
                      )
                    ]),
                sayfaNesne().ornek("Havuçlu Kek", context, havucluKek()),
                sayfaNesne().ornek("Amonyaklı Pasta", context, amonyakliPasta()),
                sayfaNesne().ornek("Mısır Keki", context, misirKeki()),
                sayfaNesne().ornek("Çikolatalı Kek Tadında Islak Kek", context, cikolataliKek()),
                sayfaNesne().ornek("Sürpriz Kurabiye", context, surprizKurabiye()),
                sayfaNesne().ornek("Tahinli Çörek", context, tahinliCorek()),
                sayfaNesne().ornek("Starbucks Kurabiye", context, starbucksKurabiye()),
                sayfaNesne().ornek("Laz Böreği", context, lazBoregi()),
                sayfaNesne().ornek("Fırında Sütlaç", context, firinSutlac()),
                sayfaNesne().ornek("Muhallebi", context, muhallebi()),
                sayfaNesne().ornek("Trileçe", context, trilece()),
              ],
            ),
          )),
    );
  }
}
