// ignore_for_file: use_build_context_synchronously
import 'package:backendless_sdk/backendless_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'routes/route_manager.dart';
import 'view_models/user_management_view_model.dart';

class InitApp {
  static const String apiKeyAndroid =
      '7ED8962D-5FE8-425C-A355-30B0155F3613'; //add your own key
  static const String apiKeyIOS =
      'ED452D88-026D-42C7-AFF4-26C23450C8DC'; //add your own key
  static const String appID =
      'E5E4AFC6-06FE-5CE2-FF1B-62535C0A5900'; // add your own key

  static void initializeApp(BuildContext context) async {
    await Backendless.initApp(
        androidApiKey: apiKeyAndroid,
        iosApiKey: apiKeyIOS,
        applicationId: appID);
    String result =
        await context.read<UserManagementViewModel>().checkIfUserLoggedIn();
    if (result == 'OK') {
      //get the notes list for the specific user logged in
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    } else {
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    }
  }
}
