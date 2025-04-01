import 'package:blog_mobile/business/models/User.dart';

abstract class BloglocalService{
  Future<bool>sauvegarderUser(User user);
}