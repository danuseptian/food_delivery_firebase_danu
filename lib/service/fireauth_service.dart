import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_firebase_danu/modules/login/login_view.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FireAuthService {
  static final auth = FirebaseAuth.instance;

  static Stream<User?> streamAuthStatus() {
    return auth.authStateChanges();
  }

  static Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await auth.signInWithCredential(credential);
  }

  static logout() async {
    await auth.signOut();
  }
}