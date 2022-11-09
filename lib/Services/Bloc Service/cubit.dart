import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Services/Dio%20Service/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_2/Services/Bloc%20Service/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());
  AppCubit get(context) => BlocProvider.of(context);

  bool isShow = false;
  var icon = Icon(CupertinoIcons.eye_slash_fill);
  dynamic icon_colors = Colors.grey;

  controlPassword() {
    if (isShow) {
      isShow = false;
      icon = Icon(CupertinoIcons.eye_slash_fill);
    } else {
      isShow = true;
      icon = Icon(CupertinoIcons.eye_fill);
    }
    emit(PasswordShowState());
  }

  login(String email, String password) {
    emit(AppLoginLoadingState());
    DioHelper.postData('login', {'email': email, 'password': password})
        .then((value) {
      print(value?.data);
      emit(AppLoginSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AppLoginErrorState());
    });
  }

  register(String name, String phone, String email, String password) {
    emit(AppRegisterLoadingState());
    DioHelper.postData('register', {
      'name': name,
      'phone': phone,
      'email': email,
      'password': password
    }).then((value) {
      print(value?.data);
      emit(AppRegisterSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AppRegisterErrorState());
    });
  }

  // bool isDark = CacheHelper.getData('isDark') ?? false;
  // // ?? means if this was null then set the variable to whatever is after it.

  // changeTheme() {
  //   isDark = !isDark;
  //   CacheHelper.setData('isDark', isDark);
  //   emit(ChangeThemeState());
  // }

}
