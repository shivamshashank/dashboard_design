import 'package:dashboard_design/core/widgets/custom_floating_action_button.dart';
import 'package:dashboard_design/features/dashboard/presentation/widgets/profile_bio.dart';
import 'package:dashboard_design/features/dashboard/presentation/widgets/profile_details.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          profileBio(),
          profileDetails(),
        ],
      ),
      floatingActionButton: customFloatingActionButton(),
    );
  }
}
