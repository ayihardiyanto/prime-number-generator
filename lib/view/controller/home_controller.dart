import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int _screenIndex;

  HomeController() : _screenIndex = 0;

  set updateScreenIndex(int index) {
    _screenIndex = index;
    notifyListeners();
  }

  int get screenIndex => _screenIndex;
}
