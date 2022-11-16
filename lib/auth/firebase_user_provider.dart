import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MusimageFirebaseUser {
  MusimageFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MusimageFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MusimageFirebaseUser> musimageFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MusimageFirebaseUser>(
      (user) {
        currentUser = MusimageFirebaseUser(user);
        return currentUser!;
      },
    );
