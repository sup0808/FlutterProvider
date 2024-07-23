import 'package:flutter/foundation.dart';

class MultipleProvider with ChangeNotifier{
  double _value = 1.0;
  double get value => _value;

  void setValue(double sliderValue){
    _value = sliderValue;
    notifyListeners();
  }

}