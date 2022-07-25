import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yatla/misc/constants.dart';
import 'package:yatla/widgets/navigation_drawer.dart';

class HistoryPage extends StatefulWidget {


  const HistoryPage({
    Key? key,}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.indigo
        ),
        title: const Text('History',
        style: style14Indigo,)),
      drawer: const NavigationDrawer(),
    );
  }
}
