import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TestingProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  increment() {
    _count++;
    notifyListeners();
  }

  decrement() {
    _count--;
    notifyListeners();
  }
}
