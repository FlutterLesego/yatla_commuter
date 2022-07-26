import 'package:flutter/material.dart';
import 'package:yatla/misc/constants.dart';
import 'package:yatla/widgets/navigation_drawer.dart';

class NotificationsPage extends StatefulWidget {


  const NotificationsPage({
    Key? key,}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.indigo
        ),
        title: const Text('Notifications',
        style: style14Indigo,)),
      drawer: const NavigationDrawer(),
    );
  }
}
