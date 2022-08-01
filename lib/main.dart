import 'package:flutter/material.dart';
import 'package:gold_api/Screens/Home.screen.dart';
import 'package:gold_api/shared/network/dio_helper.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen() ,
      debugShowCheckedModeBanner: false,
    );
  }
}