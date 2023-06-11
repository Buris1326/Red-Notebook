//Geçiş sayfası




import 'dart:async';
import 'package:kirmizidefter/gecisEkranlari/sayfaKategori.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SayfaYildirim extends StatefulWidget {

  final Widget child;

  const SayfaYildirim({required this.child});

  @override
  _SayfaYildirimState createState() => _SayfaYildirimState();
}

class _SayfaYildirimState extends State<SayfaYildirim> {

  late bool _isLoading = true;

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 1), () {          // Geçiş Sayfanın açık kalma süresi
      setState(() {
        _isLoading = false;
      });
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SayfaKategori()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if(_isLoading)
          Container(
            color: Colors.black54,
            child: const Center(
              child: SpinKitFadingCube(
                color: Colors.white,
                size: 50.0,
              ),
            ),
          )
      ],
    );
  }

}
