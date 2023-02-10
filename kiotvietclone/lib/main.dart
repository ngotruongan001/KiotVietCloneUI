import 'package:kiotvietclone/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:kiotvietclone/modules/login/login.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      );
  }
}