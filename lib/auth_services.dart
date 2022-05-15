import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signInAnonymous() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();

      User? user = userCredential.user;

      return user;
    } catch (e) {
      print(e.toString());

      return null;
    }
  }

  static Future<void> signOut() async {
    _auth.signOut();
  }

  static Stream<User?> get userStream => _auth.authStateChanges();
}
