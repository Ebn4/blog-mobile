import 'package:blog_mobile/pages/commentaire/commentState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentaireCtrl extends StateNotifier<CommentState> {
  CommentaireCtrl() : super(CommentState()){

  }

  Future<void> ajouterCommentaire(String auteur,String contenu) async{}
  Future<void> recupererCommentaires() async{}
  Future<void> supprimerCommentaire() async{}
}


final commentaireProvider =
    StateNotifierProvider<CommentaireCtrl, CommentState>((ref) {
  return CommentaireCtrl();
});