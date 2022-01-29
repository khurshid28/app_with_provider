import 'package:app_with_provider/models/userModule.dart';
import 'package:app_with_provider/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserModule(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'app with provider',
        home:  HomeScreen(),
      ),
    );
  }
}

