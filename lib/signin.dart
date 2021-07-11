import 'package:flutter/material.dart';
import 'package:shopping_app_ui/3otp.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';

import 'package:shopping_app_ui/page5.dart';
import 'package:shopping_app_ui/signmain.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'models/signin_modelclass.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
                return Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SingleChildScrollView(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Container(
                                  height:69,
                                  width:177,
                                  decoration:BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/logo.png'),
                                    ),
                                     ),
                                ),
                              ),
                              SizedBox(height: 29,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Signin",style:TextStyle(fontSize: 21))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 60,left: 40,right: 141),
                                    child: Text("Welcome back!",style:TextStyle(fontSize: 26)),
                                  )
                                ],
                              ),
                              SizedBox(height:10),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40,right: 141),
                                    child: Text("Login back into your account",style:TextStyle(fontSize: 12)),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 40,
                                width: 300,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide.none
                                      ),
                                    fillColor: HexColor("#F2F2F2"),
                                    filled: true,
                                    hintText: "Mobile Number",
                                    prefixText: "+91",
                                    prefixStyle: TextStyle(fontWeight: FontWeight.bold),
                                    hintStyle: TextStyle(fontSize: 12,color: Colors.grey.withOpacity(.50)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerification()));
                                    },
                                    child: Container(
                                      height: 41,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:HexColor("#1F1E59"),
                                        ),
                                        child: Center(child: Text("Sign in with OTP",style:TextStyle(color: Colors.white,fontSize: 14))),
                                        ),
                                  ),
                                      ],
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Center(child: Text("or",style:TextStyle(fontSize: 16,color: HexColor('#A7A7A7'))))
                                          ],
                                       ),
                                      SizedBox(height: 3,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignMain()));
                                            },
                                            child: Container(
                                              height: 41,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color:HexColor("#1F1E59"),
                                              ),
                                              child: Center(
                                                child: Text("Sign in with Password",style:TextStyle(color: Colors.white,fontSize: 14))),
                                      ),
                                          ),
                                      ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Center(child: Text("Don’t you have an account?",
                                              style:TextStyle(fontSize: 12,color: HexColor('#A7A7A7'),
                                              ),
                                              ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                                              },
                                              child: Container(
                                                height: 20,
                                                width: 43,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  color:HexColor("#1F1E59"),
                                                ),
                                                child: Center(
                                                  child: Text("Signup",
                                              style:TextStyle(
                                                  fontSize: 11,color: HexColor('#FFFFFF')
                                                  )
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ],
                                         ),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Center(child: Text("Continue without login",style:TextStyle(fontSize: 11,color: HexColor('#000000'))))
                                          ],
                                       ),
                                    ],
                                  ),
            ),
                  ),
    );
  }
}