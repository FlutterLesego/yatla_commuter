import 'package:flutter/material.dart';

import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(320), topLeft: Radius.circular(320))
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Image(
                    width: MediaQuery.of(context).size.width / 2.5,
                  image: const AssetImage("assets/images/yatla.png") 
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
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
