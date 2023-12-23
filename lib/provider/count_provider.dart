

import 'package:flutter/foundation.dart';



class CountProvider  with ChangeNotifier{

int _count = 0;


int get count => _count;


void incrementCount(){
  _count++;
  notifyListeners();
}


void decrementCount(){
  if(_count>=1){
    _count--;
    notifyListeners();

  }

}





}