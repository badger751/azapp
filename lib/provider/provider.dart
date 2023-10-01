import 'package:azapp/provider/auth/auth_provider.dart';
import 'package:azapp/provider/home/chat_screen_provider.dart';
import 'package:azapp/provider/home/main_chat_screen_provider.dart';
import "package:azapp/provider/splash/splash_provider.dart";
import 'package:azapp/provider/user/calender_provider.dart';
import 'package:provider/provider.dart';

final providers = [
  ChangeNotifierProvider<SplashProvider>(create: (context) => SplashProvider()),
  ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
  ChangeNotifierProvider<CalenderProvider>(create: (context) => CalenderProvider()),
  ChangeNotifierProvider<ChatScreenProvider>(create: (context) => ChatScreenProvider()),
  ChangeNotifierProvider<MainChatScreenProvider>(create: (context) => MainChatScreenProvider()),

];
