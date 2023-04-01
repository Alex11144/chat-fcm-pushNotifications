import 'package:chat_app/data/firebase_send_notifications_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Functions {
  static String? token = '';
  static getToken() async {
    token = await FirebaseMessaging.instance.getToken();
    print("Bearer $token");

    if (token == null) return false;
  }

  static void updateAvailability() {
    final _fireStore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    final data = {
      "name": _auth.currentUser!.displayName ?? _auth.currentUser!.email,
      "date_time": DateTime.now(),
      "email": _auth.currentUser!.email,
      "token": token
    };
    try {
      _fireStore.collection('Users').doc(_auth.currentUser!.uid).set(data);
      _fireStore
          .collection('Tokens')
          .doc("miau")
          .set({'token': Functions.token});
    } catch (e) {
      print(e);
    }
  }
}
