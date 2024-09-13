import 'dart:convert';

class ProductModel {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;
  ProductModel({this.products, this.total, this.skip, this.limit});

  List<Products> prodectFromJson(String str) =>
      List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

// String prodectToJson(List<Products> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }
}

class Products {
  int? id;
  String? name;
  String? image;
  int? price;
  double? discountPercentage;
  String? description;
  String? brand;
  String? category;
  int? countInStock;
  num? rating;
  int? numReviews;
  List<int>? size;
  List<String>? images;

  Products(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.discountPercentage,
      this.description,
      this.brand,
      this.category,
      this.countInStock,
      this.rating,
      this.numReviews,
      this.size,
      this.images});

   Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    description = json['description'];
    countInStock = json['countInStock'];
    brand = json['brand'];
    category = json['category'];
    rating = json['rating'];
    numReviews = json['numReviews'];
    size = json['size'].cast<int>();
    images = json['images'].cast<String>();
  }
}
