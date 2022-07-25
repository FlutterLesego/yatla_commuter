import 'package:flutter/material.dart';

import '../routes/route_manager.dart';
import '../widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(330), bottomRight: Radius.circular(330))),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context).popAndPushNamed(RouteManager.loginPage);
                    }, icon: const Icon(Icons.arrow_back_ios,
                    color: Colors.indigo,)),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(child: SingleChildScrollView(child: RegisterForm())),
                ),
              ],
            ),
          ),
        ));
  }
}
