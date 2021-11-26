import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/models/user.dart';

class AuthService {
  //Instance of Firebase Auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user obj based on FirebaseUser
  UserModel? _userModelFromFirebaseUser(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //Sign in Anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userModelFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign in Email

  //Register with email

  //Sign Out

}
