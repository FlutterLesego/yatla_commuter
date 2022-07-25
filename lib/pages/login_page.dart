import 'package:flutter/material.dart';
import 'package:yatla/misc/constants.dart';

import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(320), topLeft: Radius.circular(320))
          ),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    const Text(
                      'Welcome!',
                      style: styleTitleBold,
                      ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: LoginForm())),
              ),
      
            ],
          ),
        ),
      ),
    );
  }
}
