// ignore_for_file: use_build_context_synchronously

import 'package:backendless_sdk/backendless_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../routes/route_manager.dart';
import '../widgets/dialogs.dart';

class UserManagementViewModel with ChangeNotifier {
  final registerFormKey = GlobalKey<FormState>();
  final loginFormKey = GlobalKey<FormState>();

  BackendlessUser? _currentUser;
  BackendlessUser? get currentUser => _currentUser;

  void setCurrentUserToNull() {
    _currentUser = null;
  }

  //to check and show data in the UI if user exists/not
  bool _userExists = false;
  bool get userExists => _userExists;

  set userExists(bool value) {
    _userExists = value;
    notifyListeners();
  }

  //to show progress to the user with text
  bool _showUserProgress = false;
  bool get showUserProgress => _showUserProgress;

  String _userProgressText = '';
  String get userProgressText => _userProgressText;

  //check if the user is logged in and keep them logged in
  Future<String> checkIfUserLoggedIn() async {
    String result = 'OK';

    // bool? validLogin = await Backendless.userService
    //     .isValidLogin()
    //     .onError((error, stackTrace) {
    //   result = error.toString();
    // });

    // if (validLogin != null && validLogin) {
    //   String? currentUserObjectId = await Backendless.userService
    //       .loggedInUser()
    //       .onError((error, stackTrace) {
    //     result = error.toString();
    //   });
    //   if (currentUserObjectId != null) {
    //     Map<dynamic, dynamic>? mapOfCurrentUser = await Backendless.data
    //         .of("Users")
    //         .findById(currentUserObjectId)
    //         .onError((error, stackTrace) {
    //       result = error.toString();
    //     });
    //     if (mapOfCurrentUser != null) {
    //       _currentUser = BackendlessUser.fromJson(mapOfCurrentUser);
    //       notifyListeners();
    //     } else {
    //       result = 'NOT OK';
    //     }
    //   } else {
    //     result = 'NOT OK';
    //   }
    // } else {
    //   result = 'NOT OK';
    // }

    return result;
  }

   //creating a new user
  Future<String> createUserAccount(BackendlessUser user) async {
    String result = 'OK';

    _showUserProgress = true;
    _userProgressText = 'Creating account...';
    notifyListeners();

   try {
      await Backendless.userService.register(user);

    } catch (e) {
      result = getError(e.toString());
    }
    _showUserProgress = false;
    notifyListeners();
    return result;
  }

  //logout the user from the app
  Future<String> logoutUser() async {
    String result = 'OK';
    _showUserProgress = true;
    _userProgressText = 'Logging out...';
    notifyListeners();
    await Backendless.userService.logout().onError((error, stackTrace) {
      result = error.toString();
    });
    _showUserProgress = false;
    notifyListeners();
    return result;
  }

  void logoutUserInUI(BuildContext context) async {
    String result = await context.read<UserManagementViewModel>().logoutUser();
    if (result == 'OK') {
      _showUserProgress = true;
      _userProgressText = 'Logging out';
      context.read<UserManagementViewModel>().setCurrentUserToNull();
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
      _showUserProgress = false;
      notifyListeners();
      showSnackBar(context, "Logged out!");
    } else {
      showSnackBar(context, result);
    }
  }
}

//error messages
String getError(String message) {
  if (message.contains('email address must be confirmed first')) {
    return 'Please confirm your email address first';
  }
  if (message.contains('User already exists')) {
    return 'User already exists! Please create a new user or log in.';
  }
  if (message.contains('Invalid login or password')) {
    return 'Invalid credentials! Please check your username or password.';
  }
  if (message
      .contains('User account is locked out due to too many failed logins')) {
    return 'Account locked due to many failed login attempts. Please try again after 30 minutes.';
  }
  if (message.contains('Unable to find a user with the specified identity')) {
    return 'Email address not found! Please check and try again or register a new account.';
  }
  if (message.contains(
      'Unable to resolve host "api.backendless.com": No address associated with hostname')) {
    return 'No internet connection found! Please connect and try again.';
  }
  return message;
}