import 'dart:core';
import 'dart:convert';
import 'package:blog_mobile/business/models/AjouterCommentaire.dart';
import 'package:blog_mobile/business/models/Authentication.dart';
import 'package:blog_mobile/business/models/User.dart';
import 'package:blog_mobile/business/models/comment.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../business/services/blogNetworkService.dart';

class Blognetworkserviceimpl implements Blognetworkservice{

  GetStorage? box;
  @override
  Future<User> authentifier (Authentification data) async {
    var url=Uri.parse("http://127.0.0.1/api/login");
    var body=jsonEncode(data.toJson());
    var response= await http.post(
        url,
        body:body,
        headers : {"content-type":"application/json"}
    ) ;

    print(response.statusCode);
    print(response.body);
    var codes=[200,201];


    var resultat=jsonDecode(response.body) as Map;
    if(codes.contains(response .statusCode)){
      var error = resultat ["error"];
      throw Exception(error);
    }
    var user= User.fromJson(resultat);
    return user ;

  }

  @override
  Future<bool> ajouterCommentaire(AjouterCommentaire data) {
    // TODO: implement ajouterCommentaire
    throw UnimplementedError();
  }

  @override
  Future<List<Comment>> recupererCommentaires(int articleId) {
    // TODO: implement recupererCommentaires
    throw UnimplementedError();
  }

  @override
  Future<bool> supprimerCommentaire(int commentId) {
    // TODO: implement supprimerCommentaire
    throw UnimplementedError();
  }
}

void main () async{
  var formulaire= Authentification(email: "test@gmail.com", password: "123456");
  var service=Blognetworkserviceimpl();
  var user= await service.authentifier(formulaire);
  print(user.name);
}