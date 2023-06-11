import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:kirmizidefter/kayitOl_sifreYenileme/ForgotPassword.dart';
import 'package:kirmizidefter/kayitOl_sifreYenileme/SignUpScreen.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaYildirim.dart';

class SayfaBursa extends StatefulWidget {
  @override
  _SayfaBursaState createState() => _SayfaBursaState();
}

class _SayfaBursaState extends State<SayfaBursa> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void _login() async {
    try {
      UserCredential userCredential =
      await _firebaseAuth.signInWithEmailAndPassword(
        email: _usernameController.text,
        password: _passwordController.text,
      );

      // Giriş başarılı olduğunda yapılması gereken işlemler
      User? user = userCredential.user;
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SayfaYildirim(child: Container())),
        );
      }
    } catch (e) {
      // Giriş hatalı olduğunda yapılması gereken işlemler
      print("hatali bilgi girisi yapildi");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1F1F1F), // Koyu arka plan rengi
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 100),
                  Lottie.asset(
                    'assets/animations/loading_animation.json',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Kırmızı Defter',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Adınızı Giriniz",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Şifrenizi Giriniz",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => ForgotPassword()),
                          );
                        },
                        child: Text(
                          'Şifremi Unuttum',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => SignupScreen()),
                          );
                        },
                        child: Text(
                          'Kayıt Ol',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.orange],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _login(); // Giriş yapma fonksiyonu
                      },
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
