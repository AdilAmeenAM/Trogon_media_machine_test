import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trogon_media_machine_test/feature/home/models/review_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(explicitToJson: true)
  const factory Product({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "price") double? price,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "discount") int? discount,
    @JsonKey(name: "availability") bool? availability,
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "rating") double? rating,
    @JsonKey(name: "reviews") List<Review>? reviews,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
