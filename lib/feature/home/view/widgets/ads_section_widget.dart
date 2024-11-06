import 'package:flutter/material.dart';

class AdsSectionWidget extends StatelessWidget {
  const AdsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
