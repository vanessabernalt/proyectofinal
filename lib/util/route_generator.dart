import 'package:flutter/material.dart';
import 'package:ideqs/view/home_page.dart';
import 'package:ideqs/view/login_page.dart';
import 'package:ideqs/view/recovery_password_page.dart';
import 'package:ideqs/view/register_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/recovery':
        return MaterialPageRoute(builder: (_) => RecoveryPasswordPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/qr':
        return MaterialPageRoute(builder: (_) => RecoveryPasswordPage());
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}