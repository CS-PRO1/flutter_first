import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_1/screens/search_screen.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit().get(context);
          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Latest News')),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchScreen()));
                    },
                    icon: Icon(Icons.search_rounded))
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                showUnselectedLabels: true,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.black,
                currentIndex: cubit.index,
                onTap: (value) {
                  cubit.changeNavBar(value);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: (Icon(CupertinoIcons.chart_pie_fill)),
                      label: 'Business'),
                  BottomNavigationBarItem(
                      icon: (Icon(CupertinoIcons.sportscourt_fill)),
                      label: 'Sports'),
                  BottomNavigationBarItem(
                    icon: (Icon(CupertinoIcons.globe)),
                    label: 'Politics',
                  ),
                  BottomNavigationBarItem(
                      icon: (Icon(CupertinoIcons.film)), label: 'Arts'),
                ]),
            body: cubit.screens[cubit.index],
          );
        },
      ),
    );
  }
}
