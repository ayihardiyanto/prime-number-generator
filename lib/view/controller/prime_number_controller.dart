import 'package:flutter/cupertino.dart';

class PrimeNumberController extends ChangeNotifier {
  int _startPoint;
  int _endPoint;
  final List<int> _primeNumbers;

  PrimeNumberController()
      : _startPoint = 0,
        _endPoint = 0,
        _primeNumbers = [];

  set updateStartPoint(int index) {
    _startPoint = index;
    notifyListeners();
  }

  set updateEndPoint(int index) {
    _endPoint = index;
    notifyListeners();
  }

  void clear() {
    _primeNumbers.clear();
    notifyListeners();
  }

  void generatePrimeNumber() {
    _primeNumbers.clear();
    for (var i = _startPoint; i <= _endPoint; i++) {
      if (i % 2 == 1) {
        _primeNumbers.add(i);
      }
    }
    notifyListeners();
  }

  int get startPoint => _startPoint;
  int get endPoint => _endPoint;
  List<int> get primeNumbers => _primeNumbers;
}
