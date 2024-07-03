import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softair/models/user_model.dart';
import 'package:softair/screens/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoftAir',
      theme: ThemeData(useMaterial3: true),
      home: const SplashScreen(),
    );
  }
}
