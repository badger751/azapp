import 'package:azapp/view/screens/auth/login_screen.dart';
import 'package:azapp/view/screens/auth/signup_screen.dart';
import 'package:azapp/view/screens/avatar/avatar_component_selection_screen.dart';
import 'package:azapp/view/screens/avatar/avatar_name_gender_screen.dart';
import 'package:azapp/view/screens/avatar/choose_avatar_screen.dart';
import 'package:azapp/view/screens/home/add_fact_screen.dart';
import 'package:azapp/view/screens/home/add_people_pet_screen.dart';
import 'package:azapp/view/screens/home/chat_screen.dart';
import 'package:azapp/view/screens/home/home_screen.dart';
import 'package:azapp/view/screens/user-info/test_calender.dart';
import 'package:azapp/view/screens/user-info/user_dob_screen.dart';
import 'package:azapp/view/screens/user-info/user_interest_screen.dart';
import 'package:azapp/view/screens/user-info/user_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:azapp/utils/route_name.dart';

import 'package:azapp/view/screens/splash-screen/splash_screen.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Map<String, dynamic> args = {};

    if (settings.arguments != null) {
      args = settings.arguments as Map<String, dynamic>;
      debugPrint("${settings.arguments}");
    }

    switch (settings.name) {
      case RouteName.spalshScreen:
        return _getPageRoute(const SplashScreen());

      case RouteName.signupScreen:
        return _getPageRoute(const SignupScreen());

      case RouteName.loginScreen:
        return _getPageRoute(const LoginScreen());

      case RouteName.userNameScreen:
        return _getPageRoute(const UserNameScreen());

      case RouteName.userdobScreen:
        return _getPageRoute(const UserDobScreen());

      case RouteName.userInterestScreen:
        return _getPageRoute(const UserInterestScreen());

      case RouteName.avatarNameGenderScreen:
        return _getPageRoute(const AvatarNameGenderScreen());

      case RouteName.testCalenderScreen:
        return _getPageRoute(const TestCalenderScreen());

      case RouteName.chooseAvatarScreen:
        return _getPageRoute(const ChooseAvatarScreen());

      case RouteName.avatarComponentSelectionScreen:
        return _getPageRoute(const AvatarComponentSelectionScreen());

      case RouteName.homeScreen:
        return _getPageRoute(HomeScreen());

      case RouteName.chatScreen:
        return _getPageRoute(const ChatScreen());

      case RouteName.addPeoplePetScreen:
        return _getPageRoute(const AddPeoplePetScreen());

      case RouteName.addFactScreen:
        return _getPageRoute(const AddFactScreen());

      default:
        return _errorRoute();
    }
  }

  static PageRoute _getPageRoute(Widget child) {
    return MaterialPageRoute(builder: (ctx) => child);
  }

  // 404 PAGE
  static PageRoute _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('ERROR 404: Not Found'),
        ),
      );
    });
  }
}
