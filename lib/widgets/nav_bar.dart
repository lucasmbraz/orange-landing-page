import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: Row(
        children: [
          DsText.logo('ORANGE', color: DsColors.white),
          const Expanded(child: SizedBox(width: 8)),
          DsText.navItem('Benefit', color: DsColors.white),
          const SizedBox(width: 35),
          DsText.navItem('Pricing', color: DsColors.white),
          const SizedBox(width: 35),
          DsText.navItem('Testimonials', color: DsColors.white),
        ],
      ),
    );
  }
}
