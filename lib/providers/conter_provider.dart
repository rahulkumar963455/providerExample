// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class ConterProvider extends ChangeNotifier{
    int _count =  0;
  int get getCounter{
    return _count;
  }
  void increment(){
    _count++;
    notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }

}