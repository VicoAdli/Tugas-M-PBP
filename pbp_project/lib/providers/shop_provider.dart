import 'package:flutter/material.dart';
import 'package:pbp_project/models/item.dart';

class ShopProvider with ChangeNotifier {
  final List<Item> _items = []; // List untuk menyimpan item

  // Mendapatkan daftar item
  List<Item> get items => _items;

  // Menambahkan item baru
  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }
}
