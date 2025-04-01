import 'dart:convert';

import 'package:blog_mobile/business/models/User.dart';
import 'package:blog_mobile/business/services/blogLocalService.dart';
import 'package:get_storage/get_storage.dart';

class Bloglocalserviceimpl implements BloglocalService{

  GetStorage? box;
  @override
  Future<bool> sauvegarderUser(User user) async{
    var data=user.toJson();
    await box?.write("user", jsonEncode(data));
    return true;
  }

}