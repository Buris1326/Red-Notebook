import 'package:flutter/material.dart';
import 'package:kirmizidefter/functions/navigationFunction.dart';

class SayfaOlcu extends StatefulWidget {
  const SayfaOlcu({Key? key}) : super(key: key);

  @override
  _SayfaOlcuState createState() => _SayfaOlcuState();
}

class _SayfaOlcuState extends State<SayfaOlcu> {
  String _malzeme = "";
  Widget _malzemeDetayi = Container();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          leading: NavigationFunction().geriNavigasyon(context),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 150, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.food_bank,
                      color: Colors.green,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: DropdownButton(
                        dropdownColor: Colors.greenAccent,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        value: _malzeme.isNotEmpty ? _malzeme : null,
                        hint: Text('Ölçülecek Malzeme'),
                        isExpanded: true,
                        items: const [
                          DropdownMenuItem(
                            value: 'Şeker',
                            child: Text('Şeker'),
                          ),
                          DropdownMenuItem(
                            value: 'Un',
                            child: Text('Un'),
                          ),
                          DropdownMenuItem(
                            value: 'Yağ',
                            child: Text('Yağ'),
                          ),
                          DropdownMenuItem(
                            value: 'Süt',
                            child: Text('Süt'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _malzeme = value.toString();
                            _malzemeDetayi = buildMalzemeDetayi();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _malzemeDetayi,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMalzemeDetayi() {
    switch (_malzeme) {
      case 'Şeker':
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Şeker Ölçüleri',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1 su bardağı şeker = 180 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '3/4 su bardağı şeker = 140 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '2/3 su bardağı şeker = 115 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/2 su bardağı şeker = 90 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/3 su bardağı şeker = 60 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/4 su bardağı şeker = 35 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 yemek kaşığı şeker = 15 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Tepeleme 1 yemek kaşığı şeker= 23 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 tatlı kaşığı şeker = 8 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 çay kaşığı şeker = 4 gram',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      case 'Un':
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Un Ölçüleri',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1 su bardağı un = 120 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '3/4 su bardağı un = 90 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '2/3 su bardağı un = 80 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/2 su bardağı un = 60 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/3 su bardağı un = 40 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/4 su bardağı un = 30 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 yemek kaşığı un = 9 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 tatlı kaşığı un = 3 gram',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      case 'Yağ':
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Yağ Ölçüleri',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Yağ Ölçüleri Çok Yakında Burada Olacak',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      case 'Süt':
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Süt Ölçüleri',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1 su bardağı süt = 210 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '3/4 su bardağı süt = 180 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '2/3 su bardağı süt = 150 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/2 su bardağı süt = 120 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/3 su bardağı süt = 80 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1/4 su bardağı süt = 60 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 yemek kaşığı süt = 15 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 tatlı kaşığı süt = 5 gram',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '1 çay kaşığı süt = 2 gram',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      default:
        return Container();
    }
  }
}
