import 'package:cofee_app/theme/theme.dart';
import 'package:cofee_app/view/coffee_information_screen/presentation/coffee_information_screen.dart';

import 'package:cofee_app/view/list_coffee_screen/widgets/big_card.dart';
import 'package:cofee_app/view/list_coffee_screen/widgets/coffee_card.dart';
import 'package:cofee_app/view/list_coffee_screen/widgets/custom_textfield.dart';
import 'package:cofee_app/view/list_coffee_screen/widgets/drop_down_text.dart';
import 'package:cofee_app/view/list_coffee_screen/widgets/filter_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListCoffeeScreen extends StatefulWidget {
  const ListCoffeeScreen({super.key});

  @override
  State<ListCoffeeScreen> createState() => _ListCoffeeScreenState();
}

class _ListCoffeeScreenState extends State<ListCoffeeScreen> {
  final List<Map<String, dynamic>> filters = [
    {
      'title': 'All coffee',
      'isSelected': false,
    },
    {
      'title': 'Machiato',
      'isSelected': false,
    },
    {
      'title': 'Latte',
      'isSelected': false,
    },
    {
      'title': 'Americano',
      'isSelected': false,
    },
    {
      'title': 'Espresso',
      'isSelected': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leadingWidth: MediaQuery.of(context).size.width,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style:
                    theme.textTheme.displaySmall?.copyWith(color: Colors.grey),
              ),
              DropDownText(),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back_main.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Search coffee',
                      focusNode: null,
                      controller: TextEditingController(),
                      inputFormatters: [],
                      onChanged: (value) {},
                      prefixIcon: SvgPicture.asset("images/Search.svg"),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        return null;
                      },
                      isValid: true,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: SvgPicture.asset('images/filters.svg'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              BigCard(),
              const SizedBox(height: 24),
              SizedBox(
                height: 29,
                child: ListView.builder(
                  itemCount: filters.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              for (var i = 0; i < filters.length; i++) {
                                filters[i]['isSelected'] = false;
                              }

                              filters[index]['isSelected'] = true;
                            },
                          );
                        },
                        child: FilterCard(
                          title: filters[index]['title'],
                          isSelected: filters[index]['isSelected'],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CoffeeInformationScreen(
                                image: "images/2.png",
                              );
                            },
                          ),
                        );
                      },
                      child: CoffeeCard(
                        image: 'images/2.png',
                        title: 'Caffe Mocha',
                        description: 'Deep Foam',
                        price: r'$ 4.53',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
