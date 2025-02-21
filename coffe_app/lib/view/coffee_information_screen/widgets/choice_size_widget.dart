import 'package:flutter/material.dart';

class ChoiceSizeWidget extends StatefulWidget {
  const ChoiceSizeWidget({super.key});

  @override
  State<ChoiceSizeWidget> createState() => _ChoiceSizeWidgetState();
}

class _ChoiceSizeWidgetState extends State<ChoiceSizeWidget> {
  String selectedSize = 'M';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: ['S', 'M', 'L'].map((size) {
        bool isSelected = selectedSize == size;
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.26,
          height: 41,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedSize = size;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isSelected ? Colors.brown.shade100 : Colors.white,
              foregroundColor: isSelected ? Colors.brown : Colors.black,
              side: BorderSide(
                color: isSelected ? Colors.brown : Colors.grey.shade300,
                width: isSelected ? 2 : 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(size),
          ),
        );
      }).toList(),
    );
  }
}
