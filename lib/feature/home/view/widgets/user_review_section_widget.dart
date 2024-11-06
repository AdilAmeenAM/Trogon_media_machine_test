import 'package:flutter/material.dart';

class UserReviewsSectionWidget extends StatelessWidget {
  const UserReviewsSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: Icon(Icons.person, color: Colors.grey[700]),
            title: const Text(
              "User 1",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (starIndex) => Icon(
                      starIndex < 4
                          ? Icons.star
                          : Icons.star_border, // Placeholder rating
                      color: Colors.orange,
                      size: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text("This is a placeholder comment for the review."),
              ],
            ),
          ),
        );
      },
    );
  }
}
