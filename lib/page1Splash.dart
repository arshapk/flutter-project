import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
import 'package:shopping_app_ui/signin.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
            SignIn()
    )
    ),
    );
    // TODO: implement initState
    super.initState();
  }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        scale: 2,
                        image: AssetImage('images/logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.transparent,
                    valueColor: AlwaysStoppedAnimation(
                      HexColor("#1F1E59"),
                    ),
                  )
              ),
            ],
          ),
        );
      }
    }