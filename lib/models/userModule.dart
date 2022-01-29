import 'package:flutter/cupertino.dart';

class UserModule with ChangeNotifier{
  int value=0;
  plus(){
    value+=1;
    notifyListeners();
  }
  minus(){
    value-=1;
    notifyListeners();
  }
  multiply(){
   value*=2;
   notifyListeners();
  }

}