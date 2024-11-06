import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/models/product_model.dart';
import 'package:get/get.dart';
import 'package:trogon_media_machine_test/feature/home/view/pages/product_details_page.dart';

class ProductItemWidget extends StatelessWidget {
  final Product product;
  final String imageUrl;

  const ProductItemWidget({
    super.key,
    required this.product,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    /// Callback to execute when the user click the product
    void onProductClicked() {
      Get.to(
        () => ProductDetailsPage(
          product: product,
          imageUrl: imageUrl,
        ),
      );
    }

    return GestureDetector(
      onTap: onProductClicked,
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for image
            Container(
              height: 80,
              width: 150,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(product.name!,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
              '\$${(product.price! - (product.price! * 0.1)).toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Text('\$${product.price!}',
                style: const TextStyle(fontSize: 16, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
