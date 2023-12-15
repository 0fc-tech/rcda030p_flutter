import 'package:eni_shop_flutter/list_articles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
import 'cart_page.dart';

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