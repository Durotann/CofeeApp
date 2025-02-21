// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cofee_app/theme/theme.dart';
import 'package:cofee_app/theme/widgets/custom_button.dart';
import 'package:cofee_app/view/coffee_information_screen/widgets/box_icon_widget.dart';
import 'package:cofee_app/view/coffee_information_screen/widgets/choice_size_widget.dart';

class CoffeeInformationScreen extends StatefulWidget {
  const CoffeeInformationScreen({
    super.key,
    required this.image,
  });
  final String image;
  @override
  State<CoffeeInformationScreen> createState() =>
      _CoffeeInformationScreenState();
}

class _CoffeeInformationScreenState extends State<CoffeeInformationScreen> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 118,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, right: 24, left: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Price",
                        style: theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        r"$ 4.53",
                        style: theme.textTheme.labelMedium
                            ?.copyWith(color: theme.colorScheme.primary),
                      ),
                    ],
                  ),
                  const SizedBox(width: 34),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      title: 'Buy Now',
                      isActive: true,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Detail",
          style: theme.textTheme.displayMedium?.copyWith(color: Colors.black),
        ),
        titleSpacing: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "images/arrow_left.png",
            scale: 4,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = !isLiked; // Меняем состояние при нажатии
                });
              },
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  isLiked ? Colors.red : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  "images/hearth.svg",
                ),
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Container(
                height: 202,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: Image.asset(widget.image).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Caffe Mocha",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ice/Hot",
                    style: theme.textTheme.displaySmall
                        ?.copyWith(color: Colors.grey),
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      BoxIconWidget(image: "images/scooter.png"),
                      BoxIconWidget(image: "images/coffe_icon.png"),
                      BoxIconWidget(image: "images/milk.png"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "4.8",
                    style: theme.textTheme.displayMedium?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    "(230)",
                    style: theme.textTheme.displaySmall
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Divider(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Description",
                style: theme.textTheme.displayMedium
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 8),
              Text(
                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee",
                style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              Text(
                "Size",
                style: theme.textTheme.displayMedium
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 16),
              ChoiceSizeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
