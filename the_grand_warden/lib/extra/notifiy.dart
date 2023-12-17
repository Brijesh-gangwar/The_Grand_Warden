import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class notify_servies {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final AndroidInitializationSettings _androidInitializationSettings =
      const AndroidInitializationSettings('fb');

  void initailsetnotfications() async {
    InitializationSettings initializationSettings =
        InitializationSettings(android: _androidInitializationSettings);

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void sendnotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails('channelID', 'channelName',
            importance: Importance.max, priority: Priority.high);

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    _flutterLocalNotificationsPlugin.show(0, title, body, notificationDetails);
  }

  // schedule notifications
  void sechedulenotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails('channelID', 'channelName',
            importance: Importance.max, priority: Priority.high);

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    _flutterLocalNotificationsPlugin.periodicallyShow(
        0, title, body, RepeatInterval.everyMinute, notificationDetails);
  }

  // stop notifications
  void stopnotifications() async {
    _flutterLocalNotificationsPlugin.cancelAll();
  }
}
