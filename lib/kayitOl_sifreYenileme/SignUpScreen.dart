import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kirmizidefter/gecisEkranlari/sayfaBursa.dart';

class SignupScreen extends StatelessWidget {

  String user_name = "";
  String user_email = "";
  String user_password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Ol'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SayfaBursa())
            );
          },
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(height: 16.0),
                    const Icon(
                      Icons.restaurant,
                      size: 80,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      onChanged: (value) {
                        user_name = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'İsim',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey[600],
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'İsim alanı boş bırakılamaz';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      onChanged: (value) {
                        user_email = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'E-posta',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey[600],
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'E-posta alanı boş bırakılamaz';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      onChanged: (value) {
                        user_password = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Şifre',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey[600],
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Şifre alanı boş bırakılamaz';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        'Kayıt Ol',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
