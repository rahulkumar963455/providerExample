import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementwithprovider/conter_screen.dart';
import 'package:statemanagementwithprovider/providers/conter_provider.dart';
import 'package:statemanagementwithprovider/providers/movie_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MovieProvider()),
        ChangeNotifierProvider(create: (context) => ConterProvider()),
      ],
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
      home: const ConterScreen(),
    );
  }
}

