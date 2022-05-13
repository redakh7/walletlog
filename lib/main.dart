import 'package:flutter/material.dart';
import 'package:logtest/loginPage.dart';
import 'signup.dart';
void main() => runApp( const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {

        '/signup': (context) => const SignUpPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => const LoginPage(),
      },
      home: const LoginPage(),
    ); // MaterialApp
  }
}

