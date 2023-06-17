import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:kirmizidefter/gecisEkranlari/sayfaBursa.dart';
import 'package:kirmizidefter/yardimciSayfalar/sayfaYildirim.dart';

class FlutterFireAuthService {
  final FirebaseAuth _firebaseAuth;

  FlutterFireAuthService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<User?> createAccount(
      String name, String email, String password) async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    try {
      User? user = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (user != null) {
        await _firestore
            .collection('users')
            .doc(_firebaseAuth.currentUser?.uid)
            .set({
          "user_id": _firebaseAuth.currentUser?.uid,
          "user_name": name,
          "user_email": email,
          "user_password": password,
        });

        return user;
      } else {
        return user;
      }
    } catch (e) {
      return null;
    }
  }

  Future<User?> logIn(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      User? user = (await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;

      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SayfaYildirim(child: Container()),
          ),
        );
        return user;
      } else {
        print("object");
        return user;
      }
    } catch (e) {
      print("object");
      return null;
    }
  }

  Future<void> logOut(BuildContext context) async {
    try {
      await _firebaseAuth.signOut().then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => SayfaBursa()));
      });
      print("object");
    } catch (e) {}
  }

  Future<dynamic> controlAuth() async {
    _firebaseAuth.authStateChanges().listen((User? user) {});
  }
}
