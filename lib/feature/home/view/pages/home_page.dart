import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/category_widget.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextButton(onPressed: () {}, child: const Text('See all'))
                ],
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryWidget(
                      imageUri: "assets/images/gaming_console.jpg",
                    ),
                    CategoryWidget(
                      imageUri: "assets/images/smart_phone.jpg",
                    ),
                    CategoryWidget(
                      imageUri: "assets/images/smart_tv.jpg",
                    ),
                    CategoryWidget(
                      imageUri: "assets/images/smart_watch.jpg",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Advertisement Section (Placeholder)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Image.asset("assets/images/smart_phone.jpg"),
                    const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Exclusive deals on electronics!',
                              style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Text('Up to 10% off',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Popular Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trending Products',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextButton(onPressed: () {}, child: const Text('See all'))
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductWidget(
                      name: 'Smartphone X',
                      price: '\$999',
                    ),
                    ProductWidget(
                      name: 'Smart Watch Y',
                      price: '\$299',
                    ),
                    ProductWidget(
                      name: 'Tablet Z',
                      price: '\$499',
                    ),
                    ProductWidget(
                      name: 'Gaming Console Pro',
                      oldPrice: '\$799',
                      price: '\$699',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('NewArrivals',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextButton(onPressed: () {}, child: const Text('See all'))
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductWidget(
                      name: 'Smartphone X',
                      price: '\$999',
                    ),
                    ProductWidget(
                      name: 'Smart Watch Y',
                      price: '\$299',
                    ),
                    ProductWidget(
                      name: 'Tablet Z',
                      price: '\$499',
                    ),
                    ProductWidget(
                      name: 'Gaming Console Pro',
                      oldPrice: '\$799',
                      price: '\$699',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
