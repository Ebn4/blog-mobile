import 'package:blog_mobile/business/models/AjouterCommentaire.dart';
import 'package:blog_mobile/business/models/Authentication.dart';
import 'package:blog_mobile/business/models/User.dart';
import 'package:blog_mobile/business/models/comment.dart';

abstract class Blognetworkservice {
  Future<User> authentifier(Authentification data);
  Future<List<Comment>> recupererCommentaires(int articleId);
  Future<bool> supprimerCommentaire(int commentId);
  Future<bool> ajouterCommentaire(AjouterCommentaire data);
}
