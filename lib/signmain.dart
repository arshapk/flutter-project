import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app_ui/10homecategory.dart';
import 'package:shopping_app_ui/7home.dart';
import 'package:shopping_app_ui/page5.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'constants/HexColor.dart';
import 'models/signin_modelclass.dart';
import 'package:get/get.dart';
class SignMain extends StatefulWidget {
  @override
  _SignMainState createState() => _SignMainState();
}

class _SignMainState extends State<SignMain> {

  TextEditingController mobilecontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();


  void login(BuildContext context) async{

    var client = http.Client();

    String mobile = mobilecontroller.text;
    String pass = passwordcontroller.text;

    var jsonresponce = await client.post("https://ecom.cybaze.com/yellowflock-api/signin_password",
        body: {
          "mobile":mobile,
          "password":pass,
        }
    );

    if(jsonresponce.statusCode == 200)
    {
      var responce = await Authentication.fromJson(jsonDecode(jsonresponce.body));
      if(responce.error)
      {
        print(responce.message);
        print("login failed");
      }
      else
        {
          print("login success");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      }
    }
    else
      {
      return null;
    }
  }
  final key= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: key,
          child:
      ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 11,top: 100,right: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/logo.png",height: 69,width: 177,)
                  ],
                ),
              ),
              SizedBox(height: 29,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Signin",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                    ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text("Mobile Number"),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 320,
                      child: TextFormField(
                        controller: mobilecontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(10)],
                        validator: (v)
                        {
                          if(v.isEmpty)
                          {
                            return("Field is Empty");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixText: "+91",
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
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 320,
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                        ),
                      )
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      login(context);
                      if (key.currentState.validate())
                          {}
                    },
                    child: Container(
                      height: 41,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:HexColor("#1F1E59"),
                      ),
                      child: Center(
                          child: Text("Signin",style:TextStyle(color: Colors.white,fontSize: 14))),
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
            ],
          )
        ],
      )
      ),
    );
  }
}
