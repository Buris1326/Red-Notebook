import 'package:kirmizidefter/functions/navigationFunction.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaOnay.dart';
import 'package:flutter/material.dart';
import '../yardimciSayfalar/sayfaNesne.dart';

class tahinliCorek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            leading: NavigationFunction().geriNavigasyon(context),
            title: Text('Tahinli Çörek',style: sayfaNesne.metinTipi,),
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
            child: Text(sayfaNesne.tahinliCorek,style: sayfaNesne.metinTipi),
          ),
        ));
  }
}
