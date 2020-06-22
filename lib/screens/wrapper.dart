import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uddhriti/models/user.dart';
import 'package:uddhriti/screens/authenticate/authenticate.dart';
import 'package:uddhriti/screens/home/home_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<User>(context);
    print('User: ' + user.toString());

    // return either home or authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
 