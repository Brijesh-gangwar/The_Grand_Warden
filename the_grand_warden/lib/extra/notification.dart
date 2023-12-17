// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:the_grand_warden/notifiy.dart';

// class notifications extends StatefulWidget {
//   const notifications({super.key});

//   @override
//   State<notifications> createState() => _notificationsState();
// }

// class _notificationsState extends State<notifications> {
//   notify_servies notificationsServices = notify_servies();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     notificationsServices.initailsetnotfications();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Notifications"),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 notificationsServices.sendnotification(
//                     "this is title ", "this is body");
//               },
//               child: Text("send")),
//           SizedBox(
//             height: 8,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 notificationsServices.stopnotifications();
//               },
//               child: Text("stop")),
//           SizedBox(
//             height: 8,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 notificationsServices.sechedulenotification(
//                     "----title --", "body****");
//               },
//               child: Text("schedule"))
//         ],
//       ),
//     );
//   }
// }
