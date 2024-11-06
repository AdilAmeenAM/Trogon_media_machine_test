import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/controller/products_controller.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/ads_section_widget.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/category_section_widget.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/products_list_section_widget.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productsController = Get.put(ProductsController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore What You Need',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Smartphone, tablet, console, etc",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),

              // Categories Section
              const CategorySectionWidget(),
              const SizedBox(height: 20),

              // Advertisement Section
              const AdsSectionWidget(),

              const SizedBox(height: 20),

              // Popular Section
              const ProductsListSectionWidget(
                  sectionTitle: 'Trending Products'),

              const ProductsListSectionWidget(sectionTitle: 'New Arrivals'),
            ],
          ),
        ),
      ),
    );
  }
}
