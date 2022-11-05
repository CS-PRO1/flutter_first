import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/art_news_screen.dart';
import 'package:flutter_application_1/screens/business_news_screen.dart';
import 'package:flutter_application_1/cache/cache.dart';
import 'package:flutter_application_1/Services/Dio%20service/dio.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/screens/politics_news_screen.dart';
import 'package:flutter_application_1/screens/sports_news_screen.dart';
import 'package:flutter_application_1/Bloc%20Service/states.dart';
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

  changeColor(context) {
    emit(ColorChangeState());
    if (icon_colors == Colors.grey)
      icon_colors = Theme.of(context).primaryColor;
    else
      icon_colors = Colors.grey;
  }
}

class RegPasswordCubit extends Cubit<AppStates> {
  RegPasswordCubit() : super(InitAppState());
  RegPasswordCubit get(context) => BlocProvider.of(context);
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
    emit(PasswordShowState2());
  }

  changeColor(context) {
    emit(ColorChangeState());
    if (icon_colors == Colors.grey)
      icon_colors = Theme.of(context).primaryColor;
    else
      icon_colors = Colors.grey;
  }
}

class ThemeCubit extends Cubit<AppStates> {
  ThemeCubit() : super(InitAppState());
  ThemeCubit get(context) => BlocProvider.of(context);
  bool isDark = CacheHelper.getData('isDark') ?? false;
  // ?? means if this was null then set the variable to whatever is after it.

  changeTheme() {
    isDark = !isDark;
    CacheHelper.setData('isDark', isDark);
    emit(ChangeThemeState());
  }
}

class NewsCubit extends Cubit<AppStates> {
  NewsCubit() : super(InitAppState());
  NewsCubit get(context) => BlocProvider.of(context);

  int index = 0;
  List screens = [
    BusinessNewsScreen(),
    SportsNewsScreen(),
    PoliticsNewsScreen(),
    ArtsNewsScreen(),
  ];

  NewsModel? newsModel;
  getBusiness() {
    emit(LoadingDataState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'business',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      //print(newsModel?.articles[0].title);
      emit(GetDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDataErrorState());
    });
  }

  getSports() {
    emit(LoadingDataState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'sports',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      //print(newsModel?.articles[0].title);
      emit(GetDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDataErrorState());
    });
  }

  getPolitics() {
    emit(LoadingDataState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'politics',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      //print(newsModel?.articles[0].title);
      emit(GetDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDataErrorState());
    });
  }

  getArts() {
    emit(LoadingDataState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'music',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      //print(newsModel?.articles[0].title);
      emit(GetDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDataErrorState());
    });
  }

  changeNavBar(currentIndex) {
    index = currentIndex;
    print(index);
    emit(ChangeNavBarState());
  }

  getSearch(String value) {
    emit(SearchLoadingState());
    DioHelper.getData('everything', {
      'q': value,
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      emit(SearchResultSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetSearchErrorState());
    });
  }
}
