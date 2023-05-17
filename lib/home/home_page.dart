import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:orange_landing_page/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 120),
            child: NavBar(),
          ),
          Expanded(
            child: Row(
              children: [
                const SizedBox(width: 120),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: DsText.heading1(
                          'Subscribe today and get notified first when we launch Orange app!',
                          color: DsColors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Flexible(
                        child: DsText.bodyEmphasis(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
                          color: DsColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 88),
                Flexible(
                  child: Image.asset('assets/mobile.png'),
                ),
                const SizedBox(width: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
