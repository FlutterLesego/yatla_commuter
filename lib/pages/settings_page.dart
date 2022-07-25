import 'package:flutter/material.dart';
import 'package:yatla/misc/constants.dart';
import 'package:yatla/routes/route_manager.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, RouteManager.profilePage);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.indigo),
        title: const Text(
          'Settings',
          style: style14Indigo,
        ),
      ),
    );
  }
}
