//tariften sonra gelen sayfa yıldız koyulabilir




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../gecisEkranlari/sayfaBursa.dart';

class sayfaOnay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        title: const Text('Tarifi Beğendin Mi ?',
            style: TextStyle(color: Colors.black54)),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SayfaBursa()));
                    },
                    child: const Text(
                      'Değerlendirmen İçin Teşekkürler',
                      style: TextStyle(
                        fontSize: 25,
                        decoration: TextDecoration.overline,
                        fontWeight: FontWeight.w900,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
