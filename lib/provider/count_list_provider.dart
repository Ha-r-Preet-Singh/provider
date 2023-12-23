


import 'package:flutter/material.dart';

class CountListProvider extends ChangeNotifier{


  List<Map<String,dynamic>> _arrData = [];


  List<Map<String,dynamic>> get noteData => _arrData;



  void addData(Map<String,dynamic> data){
    _arrData.add(data);
    notifyListeners();
  }


  void updateData(Map<String,dynamic> data ,int index){
    _arrData[index] = data;
    notifyListeners();
  }


  void deleteData(int index){
    _arrData.removeAt(index);
    notifyListeners();
  }





}