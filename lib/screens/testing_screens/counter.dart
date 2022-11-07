import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) {
          var cubit = AppCubit().get(context);
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text('Minus'),
                    onPressed: () {
                      cubit.countMinus();
                    },
                  ),
                  Text('${cubit.getCount()}'),
                  TextButton(
                    child: Text('Plus'),
                    onPressed: () {
                      cubit.countPlus();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
