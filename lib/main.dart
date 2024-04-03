// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

//import 'dart:io';

//import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF07983D), // Status bar color
    ));
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          home: SignUp(),
        );
      },
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //home: Scaffold(
      //backgroundColor: Colors.green[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Image.asset(
                'images/Group 9.png',
                width: 204.w,
                height: 204.h,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Color(0xFF07983D),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Create a new account',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.0,
                    color: Color(0xFF07983D)),
              ),
              SizedBox(
                height: 19.h,
              ),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Icon(
                          Icons.person_outline,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Name',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(height: 35.h),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Email',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Password',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(height: 35.h),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF07983D)),
                  minimumSize: MaterialStateProperty.all(Size(325.w, 50.h)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12).w, // Adjust the radius as needed
                  )),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              Container(
                height: 190.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Vector.png'),
                        fit: BoxFit.none)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account?',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Cairo',
                            fontSize: 16.sp,
                            color: Color(0xFF07983D),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false; // Initialize isChecked to a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Image.asset(
                'images/Group 9.png', // Replace 'images/sth.png' with the path to your logo image
                width: 204.w, // Adjust the width of the image
                height: 204.h, // Adjust the height of the image
                fit: BoxFit
                    .contain, // Choose the BoxFit option that best fits your logo within the specified dimensions
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo',
                  fontSize: 20.sp,
                  color: Color(0xFF07983D),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Login to your account',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    color: Color(0xFF07983D)),
              ),
              SizedBox(
                height: 19.h,
              ),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Email',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(
                  height: 35.h
              ),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Password',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 53.w,
                  ),
                  Container(
                    width: 16.w, // Adjust width as needed
                    height: 16.h, // Adjust height as needed
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.green, // Set border color to green
                      ),
                      borderRadius: BorderRadius.circular(
                          4).w, // Set border radius for rounded corners
                    ),
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue ?? false;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF07983D),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()));
                    },

                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo',
                        fontSize: 14.sp,
                        color: Color(0xFF07983D),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 26.h
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF07983D)),
                  minimumSize: MaterialStateProperty.all(Size(325.w, 50.h)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        12).w, // Adjust the radius as needed
                  )),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                  height: 87.h
              ),
              Container(
                height: 190.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Vector.png'),
                        fit: BoxFit.none)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don´t have an Account?',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Cairo',
                            fontSize: 16.sp,
                            color: Color(0xFF07983D),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
class ResetPassword extends StatelessWidget {
  const ResetPassword ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //home: Scaffold(
      //backgroundColor: Colors.green[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 31.w,),
                  Container(
                    height: 32.h,
                    width: 32.w,
                    margin: EdgeInsets.fromLTRB(0.0,0.0,19.0,0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).w, // Adjust border radius for rounded rectangle shape
                      color: Color(0xFF07983D),
                    ),
                    child: BackButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignIn()),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF07983D)),
                          iconColor: MaterialStateProperty.all(Colors.white),
                          iconSize: MaterialStateProperty.all(25.sp),
                          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5))
                      ),
                    ),
                  ),
                  SizedBox(width: 23.w,),
                  Image.asset(
                    'images/Group 9.png',
                    width: 204.w,
                    height: 204.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Color(0xFF07983D),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Enter your new password',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    color: Color(0xFF07983D)),
              ),
              SizedBox(
                height: 19.h,
              ),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'New Password',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(height: 35.h),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Icon(
                          Icons.lock_outlined,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Confirm Password',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(height: 35.h),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF07983D)),
                  minimumSize: MaterialStateProperty.all(Size(325.w, 50.h)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        12).w, // Adjust the radius as needed
                  )),
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              SizedBox(height: 100.h),
              Container(
                height: 190.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Vector.png'),
                        fit: BoxFit.none)),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}
class ForgotPassword extends StatelessWidget {
  const ForgotPassword ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //home: Scaffold(
      //backgroundColor: Colors.green[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 31.w,),
                  Container(
                    height: 32.h,
                    width: 32.w,
                    margin: EdgeInsets.fromLTRB(0.0,0.0,19.0,0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).w, // Adjust border radius for rounded rectangle shape
                      color: Color(0xFF07983D),
                    ),
                    child: BackButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignIn()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF07983D)),
                        iconColor: MaterialStateProperty.all(Colors.white),
                        iconSize: MaterialStateProperty.all(25.sp),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5))
                      ),
                    ),
                  ),
                  SizedBox(width: 23.w,),
                  Image.asset(
                    'images/Group 9.png',
                    width: 204.w,
                    height: 204.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Color(0xFF07983D),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'We will send you a link to reset your password',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    color: Color(0xFF07983D)),
              ),
              SizedBox(
                height: 19.h,
              ),
              Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF07983D),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF07983D),
                        ),
                      ),
                      hintText: 'Email',
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Cairo',
                      )),
                ),
              ),
              SizedBox(height: 35.h),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF07983D)),
                  minimumSize: MaterialStateProperty.all(Size(325.w, 50.h)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        12).w, // Adjust the radius as needed
                  )),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 195.h),
              Container(
                height: 190.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Vector.png'),
                        fit: BoxFit.none)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: []),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}
