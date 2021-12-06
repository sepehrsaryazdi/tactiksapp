
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'user_data_provider.g.dart';

@HiveType(typeId: 0)
class UserDataProvider extends ChangeNotifier {

  // uninitialised user data.
  @HiveField(0)
  String fullName = '';
  @HiveField(1)
  String mobileNumber = ''; 
  @HiveField(2)
  String email = '';
  @HiveField(3)
  String password = '';
  @HiveField(4)
  String deviceType = '';
  @HiveField(5)
  String deviceToken = '';

  void reloadApp(){
    notifyListeners();
  }


}