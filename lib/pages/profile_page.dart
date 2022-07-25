import 'package:flutter/material.dart';
import 'package:yatla/misc/constants.dart';
import 'package:yatla/routes/route_manager.dart';
import 'package:yatla/widgets/navigation_drawer.dart';

class ProfilePage extends StatefulWidget {


  const ProfilePage({
    Key? key,}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.indigo
        ),
        title: const Text('Edit profile',
        style: style14Indigo,),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, RouteManager.settingsPage);
            },
            icon: const Icon(Icons.settings_outlined))
        ],),
      drawer: const NavigationDrawer(),
    );
  }
}
