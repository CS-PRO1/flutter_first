import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/messenger.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  bool isShow1 = true;
  bool isShow2 = true;

  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confPasswordController = TextEditingController();
  String password = '';
  var formkey = GlobalKey<FormState>();

  var eye1 = Icon(CupertinoIcons.eye_slash_fill);
  var eye2 = Icon(CupertinoIcons.eye_slash_fill);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
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
                      obscureText: isShow1,
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.lock_fill),
                          label: Text('Password'),
                          suffixIcon: IconButton(
                            icon: eye1,
                            onPressed: () {
                              setState(() {
                                if (isShow1) {
                                  isShow1 = false;
                                  eye1 = Icon(CupertinoIcons.eye_fill);
                                } else {
                                  isShow1 = true;
                                  eye1 = Icon(CupertinoIcons.eye_slash_fill);
                                }
                              });
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
                      obscureText: isShow2,
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.lock_rotation),
                          label: Text('Confirm Password'),
                          suffixIcon: IconButton(
                            icon: eye2,
                            onPressed: () {
                              setState(() {
                                if (isShow2) {
                                  isShow2 = false;
                                  eye2 = Icon(CupertinoIcons.eye_fill);
                                } else {
                                  isShow2 = true;
                                  eye2 = Icon(CupertinoIcons.eye_slash_fill);
                                }
                              });
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
                                    builder: (context) => MessengerScreen()),
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
                                    builder: (context) => loginScreen()),
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
          )),
    );
  }
}
