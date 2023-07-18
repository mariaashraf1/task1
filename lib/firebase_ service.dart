
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Firebase_service {
  //an instance of the FirebaseAuth class
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Function to create a custom user from firebase user


  //anonymous sign in
  Future signInAnon() async {
    try {
      UserCredential authResult = await _auth.signInAnonymously();
      final User? firebaseUser = authResult.user;
    } catch (e) {
      debugPrint("$e");
      return null;
    }
  }


  //Sign up with email and password
  Future signUp(String email, String password) async {
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      final User? firebaseUser = authResult.user;

      debugPrint("New user added to firebase!");

    } catch (e) {
      debugPrint("$e");
      return null;
    }
  }



  }



