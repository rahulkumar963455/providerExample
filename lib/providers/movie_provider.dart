import 'package:flutter/material.dart';

class MovieProvider with ChangeNotifier {
  List<int> favlist = [];
  
  void addList(int index) {
    favlist.add(index);
    notifyListeners();
  }

  void removeFav(int index) {
    favlist.remove(index);
    notifyListeners();
  }
}