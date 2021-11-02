import 'package:dashboard_design/core/constants/pages.dart';
import 'package:dashboard_design/features/dashboard/presentation/widgets/welcome_background.dart';
import 'package:dashboard_design/features/dashboard/presentation/widgets/welcome_greeting.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          welcomeBackground(),
          welcomeGreeting(
            onTapNextButton: () => Navigator.pushNamed(
              context,
              Pages.dashboardPage,
            ),
          ),
        ],
      ),
    );
  }
}
