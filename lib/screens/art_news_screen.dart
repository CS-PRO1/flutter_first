import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/components.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArtsNewsScreen extends StatelessWidget {
  const ArtsNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getArts(),
      child: BlocConsumer<NewsCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var newsmodel = NewsCubit().get(context).newsModel;
          return BuildCondition(
            //condition: state is GetDataSuccessState,
            condition: newsmodel != null,
            builder: (context) => ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  buildNewsItem(newsmodel!.articles[index], context),
              itemCount: newsmodel!.articles.length,
            ),
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }

}
