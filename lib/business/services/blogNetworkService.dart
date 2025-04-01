import 'package:blog_mobile/business/models/Authentication.dart';
import 'package:blog_mobile/business/models/User.dart';

abstract class Blognetworkservice{
  Future<User>authentifier(Authentification data);
}