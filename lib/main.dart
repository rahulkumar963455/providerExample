import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementwithprovider/home_page.dart';
import 'package:statemanagementwithprovider/providers/movie_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: const HomePage(),
      );

  }
}

