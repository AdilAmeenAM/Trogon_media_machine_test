import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/product_item_widget.dart';

class ProductsListSectionWidget extends StatelessWidget {
  final String sectionTitle;

  const ProductsListSectionWidget({
    super.key,
    required this.sectionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sectionTitle, style: Theme.of(context).textTheme.bodyLarge),
            TextButton(onPressed: () {}, child: const Text('See all'))
          ],
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ProductItemWidget(
                name: 'Smartphone X',
                price: '\$999',
              ),
              ProductItemWidget(
                name: 'Smart Watch Y',
                price: '\$299',
              ),
              ProductItemWidget(
                name: 'Tablet Z',
                price: '\$499',
              ),
              ProductItemWidget(
                name: 'Gaming Console Pro',
                oldPrice: '\$799',
                price: '\$699',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
