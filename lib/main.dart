import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/route_manager.dart';
import 'view_models/user_management_view_model.dart';
import 'view_models/yatla_view_model.dart';
import 'widgets/dialogs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserManagementViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => YatlaViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        onGenerateRoute: RouteManager.onGenerateRoute,
        initialRoute: RouteManager.loadingPage,
        theme: ThemeData(
          primaryColor: Colors.indigo, 
          brightness: Brightness.light
        ),
      ),
    );
  }
}
