import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String imageUri;
  const CategoryItemWidget({super.key, required this.imageUri});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        width: 100,
        child: Center(
          child: Image.asset(
            imageUri,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
