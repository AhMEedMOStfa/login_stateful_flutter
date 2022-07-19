import 'package:flutter/material.dart';
import 'package:login_statefull/src/screens/loginScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log me In',
      home: Scaffold(
        body: LoginScreen() ,
      ),
    );
  }
}
