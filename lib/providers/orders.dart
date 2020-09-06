import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:shop/providers/cart.dart';

class Order {
  final String id;
  final double total;
  final List<CartItem> products;
  final DateTime date;

  Order({this.id, this.total, this.products, this.date});
}

class Orders with ChangeNotifier {
  List<Order> _orders = [];

  List<Order> get orders {
    return [..._orders];
  }

  void addOrders(List<CartItem> products, double total) {
    _orders.insert(
      0,
      Order(
          id: Random().nextDouble().toString(),
          total: total,
          date: DateTime.now(),
          products: products),
    );
    notifyListeners();
  }
}