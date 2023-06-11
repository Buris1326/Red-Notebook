import 'package:flutter/material.dart';
import 'package:kirmizidefter/functions/navigationFunction.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaNesne.dart';

class SarayMuhallebisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: NavigationFunction().geriNavigasyon(context),
        backgroundColor: Colors.purple,
        title: const Text('Saray Muhallebisi'),
      ),
      body: GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          if (details.scale < 0.6) {
            Navigator.pop(context);
          }
          },
        child: SingleChildScrollView(
          child: Text(
            sayfaNesne.sarayMuhallebisi,
            style: sayfaNesne.metinTipi,
          ),
        ),
      ),
    );
  }
}
