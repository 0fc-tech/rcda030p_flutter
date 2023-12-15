class Article{
  final int id;
  final String titre;
  final String description;
  final String urlImage;
  final int priceInCents;

  Article(
      this.id, this.titre, this.description, this.urlImage, this.priceInCents);

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'titre': this.titre,
      'description': this.description,
      'urlImage': this.urlImage,
      'priceInCents': this.priceInCents,
    };
  }
  //Désérialization depuis l'api https://fakestoreapi.com/products
  //On map donc nos champs avec ceux de l'API
  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      map['id'] as int,
      map['title'] as String,
      map['description'] as String,
      map['image'] as String,
      ((map['price'] as double) * 100).toInt(),
    );
  }
}