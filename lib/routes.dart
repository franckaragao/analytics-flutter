import 'package:analytics_flutter/app/screens/home/home.dart';
import 'package:analytics_flutter/app/screens/login/login.dart';
import 'package:flutter/widgets.dart';

class Routes {

  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder> {
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen()
  };
}