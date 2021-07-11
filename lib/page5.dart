
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
import 'package:shopping_app_ui/signin.dart';
import 'package:http/http.dart'as http;
import '3otp.dart';
import 'models/signupmodel.dart';
import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup>
{
  final key= GlobalKey<FormState>();
  TextEditingController mobilecontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();

  void login(BuildContext context) async
  {

    var client = http.Client();

    String mobile = mobilecontroller.text;
    String pass = passwordcontroller.text;
    String name = namecontroller.text;
    String email = emailcontroller.text;
    var jsonresponce = await client.post("https://ecom.cybaze.com/yellowflock-api/sign_up",
        body: {
          "name":name,
          "email":email,
          "mobile":mobile,
          "password":pass,
          "fcm_id":"545455asdas",
          "is_android":"1",
        }
    );

    if(jsonresponce.statusCode == 200){
      var responce = await RegisterModel.fromJson(jsonDecode(jsonresponce.body));
      if(responce.error){
        print("Registration failed");
      }else{
        print(responce.message);
        print("Registration success");
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerification()));
      }
    }
    else
      {
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: key,
        child: ListView(
          children: [
            Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/logo.png",width: 200,height: 170,)
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign Up",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                    ],
                  ),SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Name"),
                      ],
                    ),
                  ),Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 310,
                          child: TextFormField(
                            controller: namecontroller,
                            validator: (v)
                            {
                              if(v.isEmpty)
                              {
                                return("Field is Empty");
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                            ),
                          )
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Mobile Number"),
                      ],
                    ),
                  ),Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 310,
                          child: TextFormField(
                            controller: mobilecontroller,
                            validator: (v)
                          {
                            if(v.isEmpty)
                            {
                              return("Field is Empty");
                            }
                            return null;
                          },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                            ),
                          )
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Email"),
                      ],
                    ),
                  ),Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 310,
                          child: TextFormField(
                            controller: emailcontroller,
                            validator: (v)
                          {
                            if(v.isEmpty)
                            {
                              return("Field is Empty");
                            }
                            return null;
                          },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                            ),
                          )
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Password"),
                      ],
                    ),
                  ),Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 310,
                          child: TextFormField(
                            controller: passwordcontroller,
                            validator: (v)
                          {
                            if(v.isEmpty)
                            {
                              return("Field is Empty");
                            }
                            return null;
                          },
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                            ),
                          )
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Confirm Password"),
                      ],
                    ),
                  ),Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 310,
                          child: TextFormField(
                            //controller: passwordcontroller,
                            validator: (v)
                          {
                            if(v.isEmpty)
                            {
                              return("Field is Empty");
                            }
                            return null;
                          },
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          login(context);

                          if(key.currentState.validate())
                          {

                          }
                        },
                        
                        child: Container(
                          height: 51,
                          width: 280,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: HexColor("#1F1E59")),
                          child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18),)),
                        ),
                      )
                    ],),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text("Already have an account?")),
                      GestureDetector(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                        },
                        child: Container(
                          height: 20,
                          width: 45,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: HexColor("#1F1E59")),
                          child: Center(child: Text("Signin",style: TextStyle(color: Colors.white),)),
                        ),
                      )
                    ],
                  ),SizedBox(height: 50,),
                ]
            ),
          ], ),
      ),


    );
  }
}
