import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: Provider.of<ThemeProvider>(context).currentTheme, 
      builder: (context, child) {
        return child!;
      },
    );
  }
}

