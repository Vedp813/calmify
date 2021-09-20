import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataBaseService {
  final CollectionReference userCollection =
      Firestore.instance.collection('users');

  Future getUserName() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    DocumentSnapshot documentSnapshot =
        await Firestore.instance.collection('users').document(user.uid).get();
    String name = documentSnapshot.data['username'];
    print(name);
    return name;
  }

}
