import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'article.dart';
import 'cart.dart';

class ListArticlesPage extends StatelessWidget {
  ListArticlesPage({super.key});
  List<Article> listArticles = [
    Article(
      1,
      "Ordinateur portable HP",
      "Un ordinateur portable puissant pour le travail et le divertissement.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      99999,
    ),
    Article(
      2,
      "Switch Cisco 24 ports",
      "Un switch réseau Cisco pour une connectivité fiable.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      29999,
    ),
    Article(
      3,
      "Téléviseur 4K Samsung",
      "Un téléviseur 4K avec des couleurs éclatantes et une grande netteté.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      69999,
    ),
    Article(
      4,
      "Ordinateur de bureau Dell",
      "Un ordinateur de bureau performant pour les tâches professionnelles.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      79999,
    ),
    Article(
      5,
      "Routeur Wi-Fi Netgear",
      "Un routeur Wi-Fi rapide pour une connexion Internet stable.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      4999,
    ),
    Article(
      6,
      "Imprimante HP LaserJet",
      "Une imprimante laser monochrome pour une impression rapide et de qualité.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      19999,
    ),
    Article(
      7,
      "Clavier mécanique RGB",
      "Un clavier mécanique rétroéclairé avec des touches RGB personnalisables.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      7999,
    ),
    Article(
      8,
      "Souris gaming Logitech",
      "Une souris de jeu haute précision avec plusieurs boutons programmables.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      5999,
    ),
    Article(
      9,
      "Écran LED 27 pouces",
      "Un écran LED de 27 pouces avec une résolution Full HD.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      24999,
    ),
    Article(
      10,
      "Casque audio sans fil Sony",
      "Un casque audio sans fil avec une qualité sonore exceptionnelle.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      14999,
    ),
    Article(
      11,
      "Tablette Samsung Galaxy",
      "Une tablette Android performante avec un écran tactile haute résolution.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      39999,
    ),
    Article(
      12,
      "Disque dur externe Seagate",
      "Un disque dur externe de 2 To pour le stockage de données.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      7999,
    ),
    Article(
      13,
      "Webcam Logitech HD",
      "Une webcam HD avec un microphone intégré pour les appels vidéo.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      3999,
    ),
    Article(
      14,
      "Enceinte Bluetooth JBL",
      "Une enceinte Bluetooth portable avec une qualité audio impressionnante.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      6999,
    ),
    Article(
      15,
      "Scanner Epson",
      "Un scanner de documents haute résolution pour la numérisation rapide.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      12999,
    ),
    Article(
      16,
      "Disque SSD Samsung",
      "Un disque SSD rapide pour améliorer les performances de votre ordinateur.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      5999,
    ),
    Article(
      17,
      "Écouteurs Apple AirPods",
      "Des écouteurs sans fil avec une qualité sonore exceptionnelle.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      17999,
    ),
    Article(
      18,
      "Moniteur LG 4K",
      "Un moniteur 4K de 32 pouces pour une expérience visuelle immersive.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      69999,
    ),
    Article(
      19,
      "Clé USB SanDisk",
      "Une clé USB de 128 Go pour le stockage et le transfert de fichiers.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      1999,
    ),
    Article(
      20,
      "Routeur Mesh TP-Link",
      "Un routeur Mesh pour une couverture Wi-Fi étendue dans toute la maison.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      7999,
    ),
    Article(
      21,
      "Imprimante tout-en-un Canon",
      "Une imprimante tout-en-un avec scanner et photocopieur intégrés.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      14999,
    ),
    Article(
      22,
      "Laptop ASUS ROG",
      "Un ordinateur portable de jeu avec un processeur puissant et une carte graphique dédiée.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      129999,
    ),
    Article(
      23,
      "Routeur 5G Huawei",
      "Un routeur 5G pour une connectivité ultra-rapide.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      59999,
    ),
    Article(
      24,
      "Enceinte intelligente Amazon Echo",
      "Une enceinte intelligente avec Alexa pour contrôler votre maison intelligente.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      6999,
    ),
    Article(
      25,
      "Casque de réalité virtuelle Oculus",
      "Un casque de réalité virtuelle pour une expérience immersive.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      29999,
    ),
    Article(
      26,
      "Caméra de sécurité Arlo",
      "Une caméra de sécurité sans fil pour surveiller votre maison.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      9999,
    ),
    Article(
      27,
      "Souris ergonomique Logitech",
      "Une souris ergonomique pour un confort optimal lors de l'utilisation de l'ordinateur.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      4999,
    ),
    Article(
      28,
      "Écran incurvé Samsung",
      "Un écran incurvé pour une expérience de jeu immersive.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      34999,
    ),
    Article(
      29,
      "Routeur 4G LTE Netgear",
      "Un routeur 4G LTE pour une connectivité Internet haut débit.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      8999,
    ),
    Article(
      30,
      "Laptop Apple MacBook Pro",
      "Un ordinateur portable Apple avec un écran Retina et des performances exceptionnelles.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      149999,
    ),
    Article(
      31,
      "Clé USB Kingston",
      "Une clé USB de 256 Go pour le stockage de données portable.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      2999,
    ),
    Article(
      32,
      "Écouteurs Bose QuietComfort",
      "Des écouteurs avec suppression de bruit pour une expérience sonore paisible.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      24999,
    ),
    Article(
      33,
      "Tablette Microsoft Surface",
      "Une tablette Windows 10 avec un stylet pour la créativité.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      79999,
    ),
    Article(
      34,
      "Disque dur externe Western Digital",
      "Un disque dur externe de 4 To pour le stockage de données massif.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      12999,
    ),
    Article(
      35,
      "Webcam 4K Logitech",
      "Une webcam 4K pour une qualité vidéo exceptionnelle lors des appels.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      5999,
    ),
    Article(
      36,
      "Enceinte portable Bose",
      "Une enceinte portable avec un son puissant pour les déplacements.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      12999,
    ),
    Article(
      37,
      "Scanner portable Epson",
      "Un scanner portable pour numériser des documents en déplacement.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      6999,
    ),
    Article(
      38,
      "Disque SSD NVMe Kingston",
      "Un disque SSD NVMe ultra-rapide pour des performances extrêmes.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      7999,
    ),
    Article(
      39,
      "Écouteurs sans fil Jabra",
      "Des écouteurs sans fil avec une qualité audio exceptionnelle.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      8999,
    ),
    Article(
      40,
      "Moniteur LG UltraWide",
      "Un moniteur UltraWide pour une productivité améliorée.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      89999,
    ),
    Article(
      41,
      "Clavier mécanique Corsair",
      "Un clavier mécanique de jeu avec des switches Cherry MX.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      9999,
    ),
    Article(
      42,
      "Laptop Dell XPS",
      "Un ordinateur portable Dell XPS avec un écran InfinityEdge.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      129999,
    ),
    Article(
      43,
      "Routeur Wi-Fi 6 ASUS",
      "Un routeur Wi-Fi 6 pour une connectivité ultra-rapide.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      12999,
    ),
    Article(
      44,
      "Imprimante laser couleur Brother",
      "Une imprimante laser couleur pour des documents de qualité professionnelle.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      24999,
    ),
    Article(
      45,
      "Souris sans fil Microsoft",
      "Une souris sans fil avec une précision exceptionnelle.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      4999,
    ),
    Article(
      46,
      "Écran OLED LG",
      "Un écran OLED de 55 pouces avec des couleurs vives et des noirs profonds.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      149999,
    ),
    Article(
      47,
      "Routeur Mesh Google Nest",
      "Un routeur Mesh pour une connectivité Wi-Fi dans toute la maison.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      9999,
    ),
    Article(
      48,
      "Scanner de diapositives Epson",
      "Un scanner de diapositives pour la numérisation d'anciennes photos.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      7999,
    ),
    Article(
      49,
      "Disque SSD externe Samsung",
      "Un disque SSD externe de 1 To pour une grande portabilité.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      4999,
    ),
    Article(
      50,
      "Caméra de surveillance Ring",
      "Une caméra de surveillance pour la sécurité de votre domicile.",
      "https://picsum.photos/seed/${Random().nextInt(5000)}/60/60.webp",
      7999,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ENI-SHOP"),
        actions: [
          IconButton(
              onPressed: ()=> context.go('/cart'),
              icon: Badge.count(
                  count: context.watch<Cart>().getAllArticles().length,
                  child: Icon(Icons.shopping_cart_outlined)
              )
          )
        ],
      ),
      body: ListView.builder(
          itemCount: listArticles.length,
          itemBuilder: (_, index)=>
              ListTile(
                onTap: ()=> context.go("/detail",extra: listArticles[index]),
                title:Text(listArticles[index].titre),
                subtitle:Text("${listArticles[index].description}\n "
                    "${listArticles[index].priceInCents/100}€"),
                leading: Hero(
                  tag: listArticles[index].id,
                  child: Image.network(
                      listArticles[index].urlImage,
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: ()=> context.read<Cart>().addArticle(listArticles[index]) ,
                ),
              )
      ),
    );
  }
}
