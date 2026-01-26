import 'package:agri_tech/model/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier{
  UserModel _model = UserModel();

  void setUser(UserModel model){
    _model = model;
    notifyListeners();
  }

  UserModel getUser() => _model;

}