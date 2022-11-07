import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/messenger.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confPasswordController = TextEditingController();
  String password = '';
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegPasswordCubit(),
      child: BlocConsumer<RegPasswordCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = RegPasswordCubit().get(context);
            return Scaffold(
                appBar: AppBar(
                  title: Text('My APP'),
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            controller: usernameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Choose a Username';
                              }
                            },
                            decoration: InputDecoration(
                                label: Text('Username'),
                                prefixIcon: Icon(CupertinoIcons.person_fill),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email address';
                              }
                            },
                            decoration: InputDecoration(
                                label: Text('Email'),
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              password = value;
                            },
                            controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }
                            },
                            obscureText: !cubit.isShow,
                            decoration: InputDecoration(
                                prefixIcon: Icon(CupertinoIcons.lock_fill),
                                label: Text('Password'),
                                suffixIcon: IconButton(
                                  icon: cubit.icon,
                                  onPressed: () {
                                    cubit.controlPassword();
                                  },
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            controller: confPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please confirm your password';
                              } else if (value != password) {
                                return 'Password is incorrect';
                              }
                            },
                            obscureText: !cubit.isShow,
                            decoration: InputDecoration(
                                prefixIcon: Icon(CupertinoIcons.lock_rotation),
                                label: Text('Confirm Password'),
                                suffixIcon: IconButton(
                                  icon: cubit.icon,
                                  onPressed: () {
                                    cubit.controlPassword();
                                  },
                                ),
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
                                    'Register',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already Have an account?',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()),
                                      (route) => false);
                                },
                                child: Text(
                                  'Login',
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
          }),
    );
  }
}
