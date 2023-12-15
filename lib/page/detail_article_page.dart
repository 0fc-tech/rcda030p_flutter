import 'package:flutter/material.dart';

import '../bo/article.dart';

class DetailArticlePage extends StatelessWidget {
  final Article article;
  DetailArticlePage(this.article,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Détail ${article.titre}"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: article.id,
              child: Image.network(
                article.urlImage,
                width: 300,height: 300,
                fit: BoxFit.fill,
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(article.titre,
                  style: Theme.of(context).textTheme.headlineMedium),
              Text(article.description,
                  style: Theme.of(context).textTheme.bodyLarge),
              Text("${article.priceInCents/100}€",
                  style: Theme.of(context).textTheme.bodyLarge),
          ],)
        ],
      ),
    );
  }
}
