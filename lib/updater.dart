import 'package:flutter/material.dart';

class Updater with ChangeNotifier {
  int selected = -1;

  void setSelected(int n) {
    selected = n;
    notifyListeners();
  }
}
