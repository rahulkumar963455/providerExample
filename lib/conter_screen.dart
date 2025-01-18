// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementwithprovider/providers/conter_provider.dart';

class ConterScreen extends StatelessWidget {
  const ConterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<ConterProvider>().getCounter;
    return Scaffold(
      appBar: AppBar(
        title: Text("Conter Screen"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Conter Screen",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '$value',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<ConterProvider>().increment();
                    },
                    child: Text("Increment"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ConterProvider>().decrement();
                    },
                    child: Text("Decrement"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
