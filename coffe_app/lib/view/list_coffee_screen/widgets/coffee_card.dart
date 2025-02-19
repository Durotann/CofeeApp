// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cofee_app/view/list_coffee_screen/widgets/icon_box.dart';
import 'package:flutter/material.dart';

import 'package:cofee_app/theme/theme.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
  final String image;
  final String title;
  final String description;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 128,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 28,
                      width: 51,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 12,
                          ),
                          Text(
                            "4.8",
                            style: theme.textTheme.titleSmall
                                ?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style:
                  theme.textTheme.displayMedium?.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style:
                  theme.textTheme.displayMedium?.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: theme.textTheme.labelMedium
                      ?.copyWith(color: Colors.black),
                ),
                IconBox(
                  imageString: 'images/plus.png',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
