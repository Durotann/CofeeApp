import 'package:cofee_app/theme/widgets/custom_button.dart';
import 'package:cofee_app/theme/theme.dart';
import 'package:cofee_app/view/home_screen/presentation/home_screen.dart';
import 'package:cofee_app/view/list_coffee_screen/presentation/list_coffee_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/splash.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Fall in Love with\nCoffee in Blissful\nDelight!",
                style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Welcome to our cozy coffee corner, where\nevery cup is a delightful for you.",
                style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
                title: 'Get Started',
                isActive: true,
              ),
              const SizedBox(height: 54),
            ],
          ),
        ),
      ),
    );
  }
}
