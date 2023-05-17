import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

final _navItems = [
  DsText.navItem('Benefit', color: DsColors.white),
  const SizedBox(width: 35),
  DsText.navItem('Pricing', color: DsColors.white),
  const SizedBox(width: 35),
  DsText.navItem('Testimonials', color: DsColors.white)
];

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const _NavBarMobile(),
      tablet: (_) => const _NavBarDesktop(),
      desktop: (_) => const _NavBarDesktop(),
    );
  }
}

class _NavBarMobile extends StatelessWidget {
  const _NavBarMobile();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _Logo(),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _navItems,
        ),
      ],
    );
  }
}

class _NavBarDesktop extends StatelessWidget {
  const _NavBarDesktop();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: Row(
        children: [
          const _Logo(),
          const Expanded(child: SizedBox(width: 8)),
          ..._navItems,
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return DsText.logo('ORANGE', color: DsColors.white);
  }
}
