// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_application_1/models/user_model.dart';
// import 'package:flutter_application_1/services/firebase_service.dart';

// class AuthRepository{
//   CollectionReference<UserModel> userRef =
//       FirebaseServices.db.collection("users")
//           .withConverter<UserModel>(
//           fromFirestore: (snapshot,_){
//             return UserModel.fromFirebaseSnapshot(snapshot){
              
//             };
//   },
//   toFirestore: (model,_) => model.toJson(),
//       );


//   Future<UserCredential> register (UserModel user,
// String email,String password)
// async{
//   var auth = await FirebaseServices.firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
//   user.userId =auth.user!.uid;
//   userRef.add(user);
//   return auth;


// }
// }

