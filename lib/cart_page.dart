
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'article.dart';
import 'cart.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panier"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<Cart>(
          builder:(context, cart,oldWidget) {
            final listArticles = cart.getAllArticles();
            return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Le prix de votre Panier"),
                  Text("${cart.getPriceTotalCents()/100}€"),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listArticles.length,
                  itemBuilder: (_, index)=>
                      ListTile(
                          title:Text(listArticles[index].titre),
                          subtitle:Text(listArticles[index].description),
                          leading: Image.network(listArticles[index].urlImage),
                          trailing: IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: ()=> context.read<Cart>()
                                .removeArticle(listArticles[index]) ,
                          )
                      )
                ),
              )
              /*Spacer(),
              Text("Voter panier est actuellement vide",
                  style: Theme.of(context).textTheme.headlineSmall
              ),
              Icon(Icons.remove_shopping_cart),
              Spacer()*/
            ],
          );
          },
        ),
      ),
    );
  }
}
