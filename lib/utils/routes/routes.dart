import 'package:flutter/material.dart';
import 'package:social_app_05/utils/routes/route_name.dart';
import 'package:social_app_05/view/dashboard/dartboard_screen.dart';
import 'package:social_app_05/view/forgot_password/forgot_password.dart';
import 'package:social_app_05/view/login/login_screen.dart';
import 'package:social_app_05/view/signup/sign_up_screen.dart';
import '../../view/splash/splash_screen.dart';


class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case RouteName.loginView:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RouteName.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      case RouteName.dashboardScreen:
        return MaterialPageRoute(builder: (_) => const DashBoard());

      case RouteName.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}