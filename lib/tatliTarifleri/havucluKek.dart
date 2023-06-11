import 'package:flutter/material.dart';
import 'package:kirmizidefter/functions/navigationFunction.dart';
import '../yardimciSayfalar/sayfaNesne.dart';
import '../yardimciSayfalar/sayfaOnay.dart';

class havucluKek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: NavigationFunction().geriNavigasyon(context),
        title: Text('Havuçlu kek',style: sayfaNesne.metinTipi,),
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
        child: Text(sayfaNesne.havucluKek,style: sayfaNesne.metinTipi,),


      ),
    ));
  }
}
