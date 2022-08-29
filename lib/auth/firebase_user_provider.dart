import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SmartCampusAppFirebaseUser {
  SmartCampusAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SmartCampusAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SmartCampusAppFirebaseUser> smartCampusAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SmartCampusAppFirebaseUser>(
            (user) => currentUser = SmartCampusAppFirebaseUser(user));
