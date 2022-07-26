import 'package:flutter/material.dart';
import 'package:yatla/misc/constants.dart';
import 'package:yatla/widgets/navigation_drawer.dart';

class FavouritesPage extends StatefulWidget {


  const FavouritesPage({
    Key? key,}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.indigo
        ),
        title: const Text('Favourites',
        style: style14Indigo,)),
      drawer: const NavigationDrawer(),
    );
  }
}
