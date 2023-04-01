import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import '../business_logic/functions.dart';

class SendNotificationsService {
  final postUrl = 'https://fcm.googleapis.com/fcm/send';
  static final _fireStore = FirebaseFirestore.instance;
  static final _auth = FirebaseAuth.instance;

  static String body = '';
  static String name = '';
  static String title = 'new message from $name';
  static String deviceToken = '';
  static String friendName = '';
  final data = {
    "notification": {"body": "$body", "title": "$title"},
    "priority": "high",
    "data": {
      "click_action": "FLUTTER_NOTIFICATION_CLICK",
      "id": "1",
      "status": "done"
    },
    "to": "$friendName"
  };
  Future<bool> makeCall() async {
    final headers = {
      'content-type': 'application/json',
      'Authorization':
          'key=AAAAu1ZQHm8:APA91bHn-cy_wpjsSQl73aayDlNN1g3XNLhfSjd8tCCGrtFiuNJpoJj6Re4aPGGKxeF0tYhWVkvWAsVlRifg8hKexyKb5XWQv2a41I61OaHVBkvS22ueJZV3MSIdi0ACGp4nM7KLJHv_'
    };

    final response = await http.post(Uri.parse(postUrl),
        body: json.encode(data),
        encoding: Encoding.getByName('utf-8'),
        headers: headers);

    if (response.statusCode == 200) {
      // on success do sth
      return true;
    } else {
      // on failure do sth
      return false;
    }
  }
}
