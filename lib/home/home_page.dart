import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:orange_landing_page/widgets/nav_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: ScreenTypeLayout.builder(
            mobile: (_) => const _HomePageMobileAndTablet(),
            desktop: (_) => const _HomePageDesktop(),
          ),
        ),
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Material(
            color: Colors.transparent,
            child: DsText.bodyEmphasis(
                '${constraints.maxWidth}x${constraints.maxHeight}',
                color: DsColors.white),
          );
        }),
      ],
    );
  }
}

class _HomePageMobileAndTablet extends StatelessWidget {
  const _HomePageMobileAndTablet();

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(
        horizontal:
            getValueForScreenType(context: context, mobile: 20, tablet: 60));
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 25),
          Padding(
            padding: padding,
            child: const NavBar(),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: const _PhoneImage(),
            ),
          ),
          const SizedBox(height: 55),
          Padding(
            padding: padding,
            child: const _Title(),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: padding,
            child: const _Subtitle(),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: padding,
            child: const _EmailField(),
          ),
          const SizedBox(height: 20),
          const _SubscribeButton(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class _HomePageDesktop extends StatelessWidget {
  const _HomePageDesktop();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 120,
          ),
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
                    const Flexible(child: _Title()),
                    const SizedBox(height: 25),
                    const Flexible(child: _Subtitle()),
                    const SizedBox(height: 40),
                    Row(
                      children: const [
                        Expanded(child: _EmailField()),
                        SizedBox(width: 16),
                        _SubscribeButton(),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 88),
              const Flexible(child: _PhoneImage()),
              const SizedBox(width: 50),
            ],
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    const text =
        'Subscribe today and get notified first when we launch Orange app!';
    const white = DsColors.white;
    return ScreenTypeLayout.builder(
      mobile: (_) => DsText.mobile1(text, color: white),
      desktop: (_) => DsText.heading1(text, color: white),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle();

  @override
  Widget build(BuildContext context) {
    return DsText.bodyEmphasis(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
      color: DsColors.white,
    );
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField();

  @override
  Widget build(BuildContext context) {
    return const DsTextFormField(
      hint: 'Your email address',
      textInputType: TextInputType.emailAddress,
    );
  }
}

class _SubscribeButton extends StatelessWidget {
  const _SubscribeButton();

  @override
  Widget build(BuildContext context) {
    return DsButton(
      onPressed: () {},
      child: const Text('Subscribe now'),
    );
  }
}

class _PhoneImage extends StatelessWidget {
  const _PhoneImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/mobile.png');
  }
}
