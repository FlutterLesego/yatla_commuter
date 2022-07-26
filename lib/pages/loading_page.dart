import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yatla/misc/constants.dart';

import '../init.dart';
import '../widgets/app_progress_indicator.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      InitApp.initializeApp(context);
    });
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: MediaQuery.of(context).size.width / 2.5,
              image: const AssetImage("assets/images/yatla.png"),
            ),
            const SizedBoxH10(),
            const AppProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
