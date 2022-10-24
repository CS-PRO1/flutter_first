import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitAppState());
  AppCubit get(context) => BlocProvider.of(context);
  int count = 0;

  getCount() {
    return count;
  }

  countMinus() {
    count--;
    emit(CountMinusState());
  }

  countPlus() {
    count++;
    emit(CountPlusState());
  }
}

class PasswordCubit extends Cubit<AppStates> {
  PasswordCubit() : super(InitAppState());
  PasswordCubit get(context) => BlocProvider.of(context);
  bool isShow = false;
  var icon = Icon(CupertinoIcons.eye_slash_fill);

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
}

class RegPasswordCubit extends Cubit<AppStates> {
  RegPasswordCubit() : super(InitAppState());
  RegPasswordCubit get(context) => BlocProvider.of(context);
  bool isShow = false;
  var icon = Icon(CupertinoIcons.eye_slash_fill);

  controlPassword() {
    if (isShow) {
      isShow = false;
      icon = Icon(CupertinoIcons.eye_slash_fill);
    } else {
      isShow = true;
      icon = Icon(CupertinoIcons.eye_fill);
    }
    emit(PasswordShowState2());
  }
}

class ThemeCubit extends Cubit<AppStates> {
  ThemeCubit() : super(InitAppState());
  ThemeCubit get(context) => BlocProvider.of(context);
  bool isDark = false;

  changeTheme() {
    isDark = !isDark;
    emit(ChangeThemeState());
  }
}
