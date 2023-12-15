import 'package:flutter/material.dart';

import 'article.dart';

class DetailArticlePage extends StatelessWidget {
  final Article article;
  DetailArticlePage(this.article,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Détail ${article.titre}"),),
      body: Hero(
        tag: article.id,
        child: Image.network(article.urlImage,width: 300,height: 300,fit: BoxFit.fill,),
      ),
    );
  }
}
