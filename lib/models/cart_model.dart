import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale

  final List _shopItems = [
    ["Avocado", "4.00", "./images/avocado.png", Colors.green],
    ["Banana", "2.50", "./images/banana.png", Colors.yellow],
    ["water", "1.00", "./images/water.png", Colors.blue],
    ["Chicken", "12.80", "./images/chicken.png", Colors.brown],
  ];

  final List _carItems = [];

  get shopItems => _shopItems;

  get carItems => _carItems;
  // add item
  void addItemToCart(int index) {
    _carItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item
  void removeItem(int index) {
    _carItems.removeAt(index);
    notifyListeners();
  }

  // calculate total
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _carItems.length; i++) {
      totalPrice += double.parse(_carItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
