import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class McxtTokenAppFirebaseUser {
  McxtTokenAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

McxtTokenAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<McxtTokenAppFirebaseUser> mcxtTokenAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<McxtTokenAppFirebaseUser>(
      (user) {
        currentUser = McxtTokenAppFirebaseUser(user);
        return currentUser!;
      },
    );
