import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  static Future signInWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      final googleKey = await account!.authentication;

      print(account);
      print('======== ID TOKEN ========');
      print(googleKey.idToken);

      return account;
    } catch (e) {
      print('Error en google Signin');
      print(e);
      return;
    }
  }

  static Future signOut() async {
    await _googleSignIn.signOut();
  }
}
