import 'package:dashboard_design/features/dashboard/presentation/pages/profile_page.dart';
import 'package:dashboard_design/features/dashboard/presentation/pages/sign_up_page.dart';
import 'package:dashboard_design/features/dashboard/presentation/pages/welcome_page.dart';
import 'package:flutter/material.dart';

import 'core/constants/pages.dart';
import 'core/presentation/pages/error_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case Pages.welcomePage:
        return materialBuilder(widget: const WelcomePage());
      case Pages.dashboardPage:
        return materialBuilder(widget: const SignUpPage());
      case Pages.profilePage:
        return materialBuilder(widget: const ProfilePage());
      default:
        return materialBuilder(widget: const ErrorPage());
    }
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
