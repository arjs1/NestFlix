import 'package:firebase_messaging/firebase_messaging.dart';

class FirebasePushNotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  Future<String> getFcmToken() async {
    _messaging.requestPermission(
      alert: true,
      announcement: true,
      sound: true,
      badge: true,
    );
    final fcmtoken = await _messaging.getToken();
    print("FCM TOKEN :: $fcmtoken");
    return fcmtoken ?? "N/A";
  }
}
