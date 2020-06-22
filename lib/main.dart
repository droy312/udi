import 'package:flutter/material.dart';
import 'package:uddhriti/models/user.dart';
import 'package:uddhriti/screens/authenticate/sign_in_screen.dart';
import 'package:uddhriti/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:uddhriti/services/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Udi',
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: Wrapper(),
      ),
    );
  }
}
