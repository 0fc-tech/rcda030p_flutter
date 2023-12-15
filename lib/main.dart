import 'package:eni_shop_flutter/page/detail_article_page.dart';
import 'package:eni_shop_flutter/page/list_articles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'bo/article.dart';
import 'bo/cart.dart';
import 'page/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Cart(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
        ),
        routerConfig: GoRouter(routes: [
          GoRoute(
            path:"/",
            builder: (_,__)=>ListArticlesPage(),
            routes: [
              GoRoute(
                path: "detail",
                builder: (_,state)=>DetailArticlePage(state.extra as Article),
              ),
              GoRoute(
                path: "cart",
                builder: (_,__)=>CartPage(),
              )
            ]
          )
        ]),
        //home: CartPage(),
      ),
    );
  }
}