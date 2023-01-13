import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices{
  static FirebaseAuth firebaseAuth =FirebaseAuth.instance;
   static FirebaseFirestore db =FirebaseFirestore.instance;

}