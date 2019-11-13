import 'package:analytics_flutter/app/constants/theme.dart';
import 'package:analytics_flutter/app/screens/home/home.dart';
import 'package:analytics_flutter/app/screens/login/login.dart';
import 'package:analytics_flutter/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analytics Mobile',
      theme: themeData,
      routes: Routes.routes,
      home: LoginScreen(),
    );
  }
}
