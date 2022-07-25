import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';
import '../misc/constants.dart';
import '../misc/validators.dart';
import '../routes/route_manager.dart';
import '../view_models/user_management_view_model.dart';
import 'app_progress_indicator.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController retypePasswordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    retypePasswordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<UserManagementViewModel>().registerFormKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create account',
              style: styleTitleBold,
            ),
            const SizedBoxH20(),
            TextFormField(
              validator: validateName,
              controller: nameController,
              decoration: formDecoration('Name', Icons.person_outline_outlined),
            ),
            const SizedBoxH10(),
            TextFormField(
              validator: validateEmail,
              controller: emailController,
              decoration: formDecoration('Email', Icons.mail_outline_rounded),
            ),
            const SizedBoxH10(),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              validator: validatePassword,
              controller: passwordController,
              decoration: formDecoration('Password', Icons.lock_outline),
            ),
            const SizedBoxH10(),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              validator: validateRetypePassword,
              controller: retypePasswordController,
              decoration: formDecoration('Re-Type Password', Icons.lock_outline),
            ),
            const SizedBoxH20(),
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
              child: const Text(
                'Register',
                style: white18style,
              ),
            ),
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
