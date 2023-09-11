import 'package:flutter/material.dart';

class CalculateProvider extends ChangeNotifier {

  double? valueTip;
  double? valueTotal;

  void calculateTip(double value, double tip) {
    valueTip = (tip * value) / 100;

    valueTotal = (valueTip! + value);

    notifyListeners();
  }
}