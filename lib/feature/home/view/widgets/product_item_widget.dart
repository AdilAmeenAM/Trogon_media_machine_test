import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final String name;
  final String price;
  final String? oldPrice;

  const ProductItemWidget(
      {super.key, required this.name, required this.price, this.oldPrice});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child:
                      Icon(Icons.devices, size: 40, color: Colors.grey[500])),
            ),
            const SizedBox(height: 8),
            Text(name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            if (oldPrice != null)
              Text(
                oldPrice!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            Text(price,
                style: const TextStyle(fontSize: 16, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
