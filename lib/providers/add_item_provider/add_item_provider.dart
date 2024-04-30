import 'package:flutter/foundation.dart';
import '../../helper_classes/controller_class/controller_class.dart';

class AddItemProvider with ChangeNotifier {
  List<ItemListController> itemListController = [];

  final List _items = [];
  final List _description = [];
  final List _unitPrice = [];
  final List _unit = [];
  final List _quantity = [];
  final List _category = [];
  final List _perItemTotalAmount = [];
  double _subTotal = 0;

  get items => _items;
  get description => _description;
  get unitPrice => _unitPrice;
  get unit => _unit;
  get quantity => _quantity;
  get category => _category;
  get perItemTotalAmount => _perItemTotalAmount;
  get subTotal => _subTotal;

  void addItem(addItem, addDescription, addUnitPrice, addUnit, addQuantity,
      addCategory, perItemTotalAmount) {
    _items.add(addItem);
    _description.add(addDescription);
    _unitPrice.add(addUnitPrice);
    _unit.add(addUnit);
    _quantity.add(addQuantity);
    _category.add(addCategory);
    _perItemTotalAmount.add(perItemTotalAmount);
    notifyListeners();
  }
   updateItem(int index, item, description, unitPrice, unit, quantity, category, perItemTotalAmount) {
    _items[index] = item;
    _description[index] = description;
    _unitPrice[index] = unitPrice;
    _unit[index] = unit;
    _quantity[index] = quantity;
    _category[index] = category;
    _perItemTotalAmount[index] = perItemTotalAmount;
    notifyListeners();
  }

  void removeItems(int index) {
    _items.removeAt(index);
    _description.removeAt(index);
    _unitPrice.removeAt(index);
    _unit.removeAt(index);
    _quantity.removeAt(index);
    _category.removeAt(index);
    _perItemTotalAmount.removeAt(index);
    notifyListeners();
  }

  void clearAllData() {
    _items.clear();
    _description.clear();
    _unitPrice.clear();
    _unit.clear();
    _quantity.clear();
    _category.clear();
    _perItemTotalAmount.clear();
    notifyListeners();
  }

  double calculateTotal() {
    _subTotal = 0;
    for (int i = 0; i < perItemTotalAmount.length; i++) {
      _subTotal += double.tryParse(perItemTotalAmount[i])!;
    }
    return _subTotal;
  }
}

