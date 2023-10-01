import 'package:azapp/gen/fonts.gen.dart';
import 'package:azapp/provider/provider.dart';
import 'package:azapp/utils/route_name.dart';
import 'package:azapp/utils/routes_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: List.from(providers),
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return MaterialApp(
            title: 'AZ App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: FontFamily.openSans,
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            initialRoute: RouteName.spalshScreen,
            themeMode: ThemeMode.dark,
            darkTheme: ThemeData.dark(),
            onGenerateRoute: RoutesGenerator.onGenerateRoute,
          );
        },
      ),
    );
  }
}
