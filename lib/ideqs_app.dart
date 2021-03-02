import 'package:flutter/material.dart';
import 'package:ideqs/util/route_generator.dart';

class IDEQSApp extends StatefulWidget {
  @override
  _IDEQSAppState createState() => _IDEQSAppState();
}

class _IDEQSAppState extends State<IDEQSApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
