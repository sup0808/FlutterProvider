import 'package:flutter/cupertino.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int index){
    _selectedItem.add(index);
    notifyListeners();
  }
}