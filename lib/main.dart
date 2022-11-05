import 'package:flutter/material.dart';
import 'package:flutter_application_1/cache/cache.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_1/Services/Dio%20service/dio.dart';
import 'package:flutter_application_1/screens/messenger.dart';
import 'package:flutter_application_1/Bloc%20Service/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (BuildContext context) => ThemeCubit(),
      child: BlocConsumer<ThemeCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MessengerScreen(),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.green,
            canvasColor: Colors.grey[100],
            textTheme: TextTheme(
              caption: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
              headline1: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              headline2: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              headline3: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              headline4: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
              bodyText1:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black87),
              subtitle1: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              subtitle2: TextStyle(
                color: Colors.blueGrey[600],
                fontWeight: FontWeight.w400,
              ),
              bodyText2: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey[900]),
          ),
          darkTheme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.green,
            inputDecorationTheme: InputDecorationTheme(
                iconColor: Colors.grey, focusColor: Colors.blue),
            canvasColor: Colors.blueGrey[900],
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.black, foregroundColor: Colors.white),
            splashColor: Colors.blueGrey[800],
            textTheme: TextTheme(
              caption: TextStyle(
                fontSize: 12,
                color: Colors.grey[400],
                fontWeight: FontWeight.w500,
              ),
              headline1: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              headline2: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              headline3: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              headline4: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
              subtitle1: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              subtitle2: TextStyle(
                color: Colors.blueGrey[400],
                fontWeight: FontWeight.w400,
              ),
              bodyText1: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
              bodyText2: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            cardColor: Colors.grey[800],
          ),
          themeMode: ThemeCubit().get(context).isDark
              ? ThemeMode.dark
              : ThemeMode.light,
        ),
      ),
    );
  }
}

class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
