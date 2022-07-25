// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const String google_api_key = "AIzaSyDZssm0pyVC8G04cAT-JACy1k2LzbPsEkU";

const TextStyle headingStyle =
    TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300);

const TextStyle headingStylepurple = TextStyle(
    fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.w300);

const TextStyle headingStyleGrey =
    TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold);

const TextStyle headingStyleBold = TextStyle(
    fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.w500);

const TextStyle whiteHeadingStyle =
    TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w300);

const TextStyle style14Black =
    TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300);

const TextStyle style14Indigo =
    TextStyle(fontSize: 14, color: Colors.indigo, fontWeight: FontWeight.w300);

const TextStyle style14White =
    TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300);

const TextStyle style18Purple = TextStyle(
    fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.w300);

const TextStyle styleButton = TextStyle(
    fontSize: 18, color: Colors.indigo, fontWeight: FontWeight.w400);

const TextStyle styleWhite = TextStyle(
  fontSize: 16,
  color: Colors.white,
);

//16 styles
const TextStyle style16Grey = TextStyle(
  fontSize: 16,
  color: Colors.grey,
);

const TextStyle style16White = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.w300
);

const TextStyle style16Black = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w300
);

const TextStyle style16Indigo = TextStyle(
  fontSize: 16,
  color: Colors.indigo,
  fontWeight: FontWeight.w300
);

const TextStyle style16Accent = TextStyle(
  fontSize: 16,
  color: Colors.indigoAccent,
);

//18 styles
const TextStyle black18style = TextStyle(
  fontSize: 18,
  color: Colors.black,
);

const TextStyle white18style = TextStyle(
  fontSize: 18,
  color: Colors.white,
);

const TextStyle style18 = TextStyle(
  fontSize: 18,
  color: Colors.indigo,
);

const TextStyle style18accent = TextStyle(
  fontSize: 18,
  color: Colors.indigoAccent,
);

//title styles
const TextStyle blackTitleStyle = TextStyle(
  fontSize: 22,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

const TextStyle whiteTitleStyle = TextStyle(
  fontSize: 22,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const TextStyle titleStyle = TextStyle(
  fontSize: 22,
  color: Colors.indigo,
  fontWeight: FontWeight.bold,
);

const TextStyle titleStyleAccent = TextStyle(
  fontSize: 22,
  color: Colors.indigoAccent,
  fontWeight: FontWeight.bold,
);

const TextStyle whiteStyleTitleBold =
    TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w500);

const TextStyle whiteStyleTitle =
    TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w200);

const TextStyle styleTitleBold =
    TextStyle(fontSize: 40, color: Colors.indigo, fontWeight: FontWeight.w500);

const TextStyle styleTitle =
    TextStyle(fontSize: 28, color: Colors.indigo, fontWeight: FontWeight.w200);


//borders
const focusedBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 2,
    color: Colors.indigoAccent,
  ),
);

const errorBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 2,
    color: Colors.red,
  ),
);

const enabledBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
  borderSide: BorderSide(
    width: 1,
    color: Colors.indigoAccent,
  ),
);

InputDecoration formDecoration(String labelText, IconData iconData) {
  return InputDecoration(
    errorStyle: const TextStyle(
      fontSize: 10,
    ),
    //counterText: '',
    prefixIcon: Icon(
      iconData,
      color: Colors.indigoAccent,
    ),
    errorMaxLines: 3,
    labelText: labelText,
    labelStyle: const TextStyle(color: Colors.grey),
    enabledBorder: enabledBorder,
    focusedBorder: focusedBorder,
    errorBorder: errorBorder,
    focusedErrorBorder: errorBorder,
  );
}

class SizedBoxH10 extends StatelessWidget {
  const SizedBoxH10({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class SizedBoxH20 extends StatelessWidget {
  const SizedBoxH20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class SizedBoxH30 extends StatelessWidget {
  const SizedBoxH30({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}
