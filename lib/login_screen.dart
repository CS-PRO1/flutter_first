import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit.dart';
import 'package:flutter_application_1/messenger.dart';
import 'package:flutter_application_1/register_screen.dart';
import 'package:flutter_application_1/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  String email = '';
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    email = emailcontroller.text;
    return BlocProvider(
      create: (context) => PasswordCubit(),
      child: BlocConsumer<PasswordCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = PasswordCubit().get(context);
          return Scaffold(
              appBar: AppBar(
                title: Text('My APP'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Icon(
                                CupertinoIcons.square,
                                color: Colors.black26,
                                size: 150,
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.black26,
                                size: 100,
                              )
                            ]),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: emailcontroller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email address';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              // hintText: 'Email',
                              label: Text('Email'),
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          onFieldSubmitted: (value) {},
                          controller: passwordcontroller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          obscureText: !cubit.isShow,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(CupertinoIcons.lock_fill),
                              label: Text('Password'),
                              suffixIcon: IconButton(
                                  icon: cubit.icon,
                                  onPressed: () {
                                    cubit.controlPassword();
                                  }),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MessengerScreen()),
                                    (route) => false);
                              }
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)),
                                width: double.infinity,
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                    (route) => false);
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
