import 'package:dashboard_design/features/dashboard/presentation/widgets/sign_up_dashboard.dart';
import 'package:dashboard_design/features/dashboard/presentation/widgets/sign_up_terms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signUpDashboard(context),
          signUpTerms(),
        ],
      ),
    );
  }
}
