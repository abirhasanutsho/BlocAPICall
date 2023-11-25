// To parse this JSON data, do
//
//     final productResponse = productResponseFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

ProductResponse productResponseFromJson(String str) =>
    ProductResponse.fromJson(json.decode(str));

String productResponseToJson(ProductResponse data) =>
    json.encode(data.toJson());

class ProductResponse extends Equatable {
  List<Popular>? popular;
  int? count;

  ProductResponse({
    this.popular,
    this.count,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        popular: json["popular"] == null
            ? []
            : List<Popular>.from(
                json["popular"]!.map((x) => Popular.fromJson(x))),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "popular": popular == null
            ? []
            : List<dynamic>.from(popular!.map((x) => x.toJson())),
        "count": count,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [popular];
}

class Popular extends Equatable {
  int? id;
  String? name;
  String? slug;
  String? description;
  int? typeId;
  int? price;
  int? shopId;
  int? salePrice;
  String? sku;
  int? quantity;
  int? inStock;
  int? isTaxable;
  dynamic shippingClassId;
  String? purchasePrice;
  String? unit;
  dynamic height;
  dynamic width;
  dynamic length;
  Image? image;
  List<Image>? gallery;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic maxPrice;
  dynamic minPrice;
  dynamic deadline;
  int? targetSale;
  dynamic delivryDate;
  int? maxQty;
  int? stockQty;
  int? prQty;
  int? orderQty;
  double? targetPrice;
  int? ordersCount;
  Type? type;

  Popular({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.typeId,
    this.price,
    this.shopId,
    this.salePrice,
    this.sku,
    this.quantity,
    this.inStock,
    this.isTaxable,
    this.shippingClassId,
    this.purchasePrice,
    this.unit,
    this.height,
    this.width,
    this.length,
    this.image,
    this.gallery,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.maxPrice,
    this.minPrice,
    this.deadline,
    this.targetSale,
    this.delivryDate,
    this.maxQty,
    this.stockQty,
    this.prQty,
    this.orderQty,
    this.targetPrice,
    this.ordersCount,
    this.type,
  });

  factory Popular.fromJson(Map<String, dynamic> json) => Popular(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        description: json["description"],
        typeId: json["type_id"],
        price: json["price"],
        shopId: json["shop_id"],
        salePrice: json["sale_price"],
        sku: json["sku"],
        quantity: json["quantity"],
        inStock: json["in_stock"],
        isTaxable: json["is_taxable"],
        shippingClassId: json["shipping_class_id"],
        purchasePrice: json["purchase_price"],
        unit: json["unit"],
        height: json["height"],
        width: json["width"],
        length: json["length"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        gallery: json["gallery"] == null
            ? []
            : List<Image>.from(json["gallery"]!.map((x) => Image.fromJson(x))),
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        maxPrice: json["max_price"],
        minPrice: json["min_price"],
        deadline: json["deadline"],
        targetSale: json["target_sale"],
        delivryDate: json["delivry_date"],
        maxQty: json["max_qty"],
        stockQty: json["stock_qty"],
        prQty: json["pr_qty"],
        orderQty: json["order_qty"],
        targetPrice: json["target_price"]?.toDouble(),
        ordersCount: json["orders_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "description": description,
        "type_id": typeId,
        "price": price,
        "shop_id": shopId,
        "sale_price": salePrice,
        "sku": sku,
        "quantity": quantity,
        "in_stock": inStock,
        "is_taxable": isTaxable,
        "shipping_class_id": shippingClassId,
        "purchase_price": purchasePrice,
        "unit": unit,
        "height": height,
        "width": width,
        "length": length,
        "image": image?.toJson(),
        "gallery": gallery == null
            ? []
            : List<dynamic>.from(gallery!.map((x) => x.toJson())),
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "max_price": maxPrice,
        "min_price": minPrice,
        "deadline": deadline,
        "target_sale": targetSale,
        "delivry_date": delivryDate,
        "max_qty": maxQty,
        "stock_qty": stockQty,
        "pr_qty": prQty,
        "order_qty": orderQty,
        "target_price": targetPrice,
        "orders_count": ordersCount,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [
        id!,
        name!,
        slug!,
        description!,
        typeId!,
        price!,
        shopId!,
        salePrice!,
        sku!,
        quantity!,
        inStock!,
        isTaxable!,
        shippingClassId!,
        purchasePrice!,
        unit!,
        height!,
        width!,
        length!,
        image!,
        gallery!,
        deletedAt!,
        createdAt!,
        updatedAt!,
        maxPrice!,
        minPrice!,
        deadline!,
        targetSale!,
        delivryDate!,
        maxQty!,
        stockQty!,
        prQty!,
        orderQty!,
        targetPrice!,
        ordersCount!,
        type!,
      ];
}

class Image {
  String? thumbnail;
  String? original;
  int? id;

  Image({
    this.thumbnail,
    this.original,
    this.id,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        thumbnail: json["thumbnail"],
        original: json["original"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail,
        "original": original,
        "id": id,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
