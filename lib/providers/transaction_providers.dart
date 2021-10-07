import 'package:flutter/material.dart';
import 'package:syafiqa_apps/models/cart_models.dart';
import 'package:syafiqa_apps/services/transaction_services.dart';


class TransactionProvider with ChangeNotifier {
  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    try {
      if (await TransactionService().checkout(token, carts, totalPrice)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
