import 'package:blog_mobile/pages/list-artcle/listArticleState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListArticleCtrl extends StateNotifier<ListArticleState> {
  ListArticleCtrl() : super(ListArticleState()){
//
  }
  Future<void> recupererArticle() async{}
  Future<void> rechercher() async{}
  Future<void> liker(int articleId) async{}
  Future<void> partager(int articleId) async{}
  Future<void> filtrerParCategorie(int categorieId) async{}
}