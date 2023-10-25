import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Functions extends ChangeNotifier {
  int total = 0;
  int incomestate = 0;
  int expensestate = 0;
  Functions() {
    getData();
  }

  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    {
      incomestate = prefs.getInt('incomee') ?? 0;
      expensestate = prefs.getInt('expensee') ?? 0;
      total = prefs.getInt('balancee') ?? 0;
      notifyListeners();
    }
  }

  Future<void> add(int incomevalue) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('balancee', total += incomevalue);
    await prefs.setInt('incomee', incomestate += incomevalue);
    notifyListeners();
  }

  Future<void> sub(int expensevalue) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('expensee', expensestate += expensevalue);
    await prefs.setInt('balancee', total -= expensevalue);
  }

  String droapdownvalue ="january";
  void homedroap(newValue) {
    droapdownvalue = newValue;
    notifyListeners();
  }
  

  String dropdownvalue = '';
  void incomedrop(newValue) {
    dropdownvalue = newValue;
    notifyListeners();
  }

  String drapdownvalue = '';
  void incomedrap(newValue) {
    drapdownvalue = newValue;
    notifyListeners();
  }

  bool toggleswitch = true;
  void incomecuper(Value) {
    toggleswitch = Value;
    notifyListeners();
  }

  String drupdownvalue = '';
  void expensedrup(newValue) {
    drupdownvalue = newValue;
    notifyListeners();
  }

  String drepdownvalue = '';
  void expensedrep(newValue) {
    drepdownvalue = newValue;
    notifyListeners();
  }

  bool taggleswitch = true;
  void expensecoper(Value) {
    taggleswitch = Value;
    notifyListeners();
  }
}
