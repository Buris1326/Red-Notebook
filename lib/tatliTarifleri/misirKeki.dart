import 'package:flutter/material.dart';
import 'package:kirmizidefter/functions/navigationFunction.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaOnay.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaNesne.dart';

class misirKeki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: NavigationFunction().geriNavigasyon(context),
        title: Text('Mısır Keki',style: sayfaNesne.metinTipi,),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sayfaOnay()),
              );
            },
            icon: const Icon(Icons.star_purple500_sharp),
          )
        ],
      ),
        body: SingleChildScrollView(
          child:
          Column(
            children: [
              Text(sayfaNesne.misirKeki,style: sayfaNesne.metinTipi)
          ],
        ),
      ),)
    );
  }
}
