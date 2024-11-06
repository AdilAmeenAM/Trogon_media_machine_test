import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/models/product_model.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/user_review_section_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  final String imageUrl;

  const ProductDetailsPage({
    super.key,
    required this.product,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder for Product Image
              Container(
                height: 200,
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              // Product Name and Price
              Text(
                product.name!,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "\$${product.price!}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "10% OFF",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Product Description
              Text(
                product.description!,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),

              // Product Rating and Availability
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange),
                      const SizedBox(width: 4),
                      Text(
                        (product.reviews!
                                    .map((reviewItem) => reviewItem.rating ?? 0)
                                    .fold(0, (item, total) => item + total) /
                                product.reviews!.length)
                            .toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const Text(
                    "In Stock",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Product Brand and Category
              Row(
                children: [
                  const Text(
                    "Brand",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    product.brand!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              Row(
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    product.category!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Customer Reviews
              const Text(
                "Customer Reviews",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              UserReviewsSectionWidget(
                reviews: product.reviews!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
