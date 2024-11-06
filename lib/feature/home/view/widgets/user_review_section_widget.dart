import 'package:flutter/material.dart';
import 'package:trogon_media_machine_test/feature/home/models/review_model.dart';

class UserReviewsSectionWidget extends StatelessWidget {
  final List<Review> reviews;

  const UserReviewsSectionWidget({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviews.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: Icon(Icons.person, color: Colors.grey[700]),
            title: Text(
              "User ${reviews[index].userId}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (i) {
                      final diff = reviews[index].rating! - (i + 1);

                      if (diff >= 1) {
                        return const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 16,
                        );
                      } else if (diff == 0.5) {
                        return const Icon(
                          Icons.star_half,
                          color: Colors.orange,
                          size: 16,
                        );
                      } else {
                        return const Icon(
                          Icons.star_border,
                          color: Colors.orange,
                          size: 16,
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  reviews[index].comment!,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
