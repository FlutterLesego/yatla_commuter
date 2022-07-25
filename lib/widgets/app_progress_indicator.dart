import 'package:flutter/material.dart';

import '../misc/constants.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({Key? key, this.text = ""}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width/4,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LinearProgressIndicator(
                color: Colors.indigo
              ),
              const SizedBoxH20(),
              Text(
                text,
                style: style16Indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
