import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';
import '../misc/constants.dart';
import '../misc/validators.dart';
import '../routes/route_manager.dart';
import '../view_models/user_management_view_model.dart';
import 'app_progress_indicator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<UserManagementViewModel>().loginFormKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBoxH30(),
            TextFormField(
              style: style16Black,
              textInputAction: TextInputAction.continueAction,
              validator: validateEmail,
              controller: emailController,
              decoration: formDecoration('Email', Icons.mail_outline_rounded),
            ),
            const SizedBoxH10(),
            TextFormField(
              style: style16Black,
              textInputAction: TextInputAction.done,
              obscureText: true,
              obscuringCharacter: '*',
              validator: validatePassword,
              controller: passwordController,
              decoration: formDecoration('Password', Icons.lock_outline_rounded),
            ),
            ButtonBar(              
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    // context.read<UserManagementViewModel>().resetPasswordInUI(context,
                    //     email: emailController.text.trim());
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: style16Black,
                  ),
                ),
              ],
            ),
            const SizedBoxH10(),
            //sign in button
            CupertinoButton(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.indigo,
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context);
                Navigator.of(context).pushNamed(RouteManager.homePage);
                // context.read<UserManagementViewModel>().loginUserInUI(context,
                //     email: emailController.text.trim(),
                //     password: passwordController.text.trim());
              },
              child: const Text('Sign in', style: white18style,),
            ),
            const SizedBoxH10(),
            //register button
            CupertinoButton(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.white,   
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.of(context).pushNamed(RouteManager.registerPage);
                // context.read<UserManagementViewModel>().loginUserInUI(context,
                //     email: emailController.text.trim(),
                //     password: passwordController.text.trim());
              },
              child: const Text('Create Account', style: style18,),
            ),

            const SizedBoxH10(),
            Selector<UserManagementViewModel, Tuple2>(
              selector: (context, value) =>
                  Tuple2(value.showUserProgress, value.userProgressText),
              builder: (context, value, child) {
                return value.item1
                    ? AppProgressIndicator(text: '${value.item2}')
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
