import 'package:flutter/material.dart';
import 'package:kiotvietclone/modules/login/login.dart';
import 'package:kiotvietclone/providers/auth_provider.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child:  MyApp(),
  ),);
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