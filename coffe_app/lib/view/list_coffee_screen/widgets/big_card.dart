import 'package:cofee_app/theme/theme.dart';
import 'package:cofee_app/view/list_coffee_screen/widgets/text_with_background.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Banner.png'),
          scale: 4,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 13,
          bottom: 13,
          left: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 26,
              width: 60,
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Promo",
                  style:
                      theme.textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextWithBackground(title: 'Buy one get'),
            TextWithBackground(title: 'one FREE'),
          ],
        ),
      ),
    );
  }
}
