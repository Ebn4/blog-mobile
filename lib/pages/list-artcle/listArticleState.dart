import 'package:blog_mobile/business/models/Article.dart';
import 'package:blog_mobile/business/models/Catgory.dart';

class ListArticleState {
  List<Article>? article;
  List<Category>? categories;
  int? page;
  String? recherche;
  bool? isLoading;
  int? categorieSelectionnee;
  String? errorMsg;

  ListArticleState({
    this.article,
    this.categories,
    this.page,
    this.recherche,
    this.isLoading,
    this.categorieSelectionnee,
    this.errorMsg,
  });

  ListArticleState copyWith({
    List<Article>? article,
    List<Category>? categories,
    int? page,
    String? recherche,
    bool? isLoading,
    int? categorieSelectionnee,
    String? errorMsg,
  }) =>
      ListArticleState(
        article: article ?? this.article,
        categories: categories ?? this.categories,
        page: page ?? this.page,
        recherche: recherche ?? this.recherche,
        isLoading: isLoading ?? this.isLoading,
        categorieSelectionnee:
            categorieSelectionnee ?? this.categorieSelectionnee,
        errorMsg: errorMsg ?? this.errorMsg,
      );
}
