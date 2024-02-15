import 'package:attachapp/auth_ui/signin.dart';
import 'package:attachapp/auth_ui/signup.dart';
import 'package:flutter/material.dart';

class WhereTogo extends StatelessWidget {
  final login = true;
  const WhereTogo({super.key, login});

  @override
  Widget build(BuildContext context) {
    return login ? SignInPage() : SignUnPage();
  }
}
