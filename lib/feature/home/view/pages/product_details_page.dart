import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/user_review_section_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Icon(Icons.image, size: 100, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16),

              // Product Name and Price
              const Text(
                'Product Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text(
                    "\$599.99",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "10% OFF",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Product Description
              const Text(
                'Product description goes here. This is a placeholder for the product description.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),

              // Product Rating and Availability
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(
                        "4.5",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Text(
                    "In Stock",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Product Brand and Category
              const Text(
                "Brand: BrandX",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Category: Electronics",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),

              // Customer Reviews
              const Text(
                "Customer Reviews",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const UserReviewsSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
