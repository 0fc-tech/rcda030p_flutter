import 'package:flutter/material.dart';

import 'article.dart';
//Change Notifier est l'implémentation Dart du
// design pattern Observer Observable
//
class Cart extends ChangeNotifier{
  final _listArticles = <Article>[];

  void addArticle(Article article ){
    _listArticles.add(article);
    notifyListeners();
  }
  void removeArticle(Article article ){
    _listArticles.remove(article);
    notifyListeners();
  }
  List<Article> getAllArticles()=> _listArticles;
  int getPriceTotalCents()=>_listArticles.fold(0,
      (previousValue, element) => previousValue + element.priceInCents);
}