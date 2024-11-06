import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/view/widgets/category_item_widget.dart';

class CategorySectionWidget extends StatelessWidget {
  const CategorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Categories', style: Theme.of(context).textTheme.bodyLarge),
            TextButton(onPressed: () {}, child: const Text('See all'))
          ],
        ),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryItemWidget(
                imageUri: "assets/images/gaming_console.jpg",
              ),
              CategoryItemWidget(
                imageUri: "assets/images/smart_phone.jpg",
              ),
              CategoryItemWidget(
                imageUri: "assets/images/smart_tv.jpg",
              ),
              CategoryItemWidget(
                imageUri: "assets/images/smart_watch.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
