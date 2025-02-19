import 'package:cofee_app/theme/theme.dart';
import 'package:cofee_app/view/list_coffee_screen/presentation/list_coffee_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    ListCoffeeScreen(), // Главный экран с кофе
    ListCoffeeScreen(),
    ListCoffeeScreen(),
    ListCoffeeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            enableFeedback: false,
            elevation: 1,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          currentIndex == 0
                              ? theme.colorScheme.primary
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset("images/home.svg"),
                        ),
                      ),
                      currentIndex == 0
                          ? selectedContainer(color: theme.colorScheme.primary)
                          : selectedContainer(color: Colors.transparent)
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          currentIndex == 1
                              ? theme.colorScheme.primary
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset("images/hearth.svg"),
                        ),
                      ),
                      currentIndex == 1
                          ? selectedContainer(color: theme.colorScheme.primary)
                          : selectedContainer(color: Colors.transparent)
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          currentIndex == 2
                              ? theme.colorScheme.primary
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset("images/Bag.svg"),
                        ),
                      ),
                      currentIndex == 2
                          ? selectedContainer(color: theme.colorScheme.primary)
                          : selectedContainer(color: Colors.transparent)
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          currentIndex == 3
                              ? theme.colorScheme.primary
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset("images/notification.svg"),
                        ),
                      ),
                      currentIndex == 3
                          ? selectedContainer(color: theme.colorScheme.primary)
                          : selectedContainer(color: Colors.transparent)
                    ],
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget selectedContainer({required Color color}) {
    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
