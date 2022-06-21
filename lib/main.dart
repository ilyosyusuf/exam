import 'package:examapp/config/init/navigation/navigator.dart';
import 'package:examapp/config/routes/page_routes.dart';
import 'package:examapp/config/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UBC',
      theme: AppTheme.apptheme,
      navigatorKey: NavigationService.instance.navigatorKey,
      initialRoute: '/mainauthview',
      onGenerateRoute: MyRoute.instance.onGenerateRoute
    );
  }
}