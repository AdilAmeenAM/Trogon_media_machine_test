import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/controller/products_controller.dart';
import 'package:trogon_media_machine_test/feature/home/models/product_model.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/product_item_widget.dart';
import 'package:get/get.dart';

class ProductsListSectionWidget extends StatelessWidget {
  final String sectionTitle;

  const ProductsListSectionWidget({
    super.key,
    required this.sectionTitle,
  });

  @override
  Widget build(BuildContext context) {
    final productsController = Get.find<ProductsController>();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sectionTitle, style: Theme.of(context).textTheme.bodyLarge),
            TextButton(onPressed: () {}, child: const Text('See all'))
          ],
        ),
        Obx(
          () {
            if (productsController.errorText.value.isNotEmpty) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Text(productsController.errorText.value),
                ),
              );
            }

            if (productsController.isLoaded.value) {
              final products = productsController.products.value;

              return SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final imageUrlIndex =
                        index % productsController.iamgeUrls.length;

                    return ProductItemWidget(
                      product: products[index],
                      imageUrl: productsController.iamgeUrls[imageUrlIndex],
                    );
                  },
                ),
              );
            } else {
              return const SizedBox(
                height: 200,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
