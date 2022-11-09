import 'package:flutter/material.dart';
import 'package:flutter_application_2/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_2/Services/Dio%20Service/dio.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
