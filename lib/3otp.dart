import 'package:otp_count_down/otp_count_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:shopping_app_ui/10homecategory.dart';
import 'package:shopping_app_ui/signmain.dart';

class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  
  dynamic _countdown;
  OTPCountDown _otpCountDown;
  final int _otpTimeInMS = 1000*30;
  
  @override
  
  void initState(){

    _startCountDown();
    super.initState();
  }
  
  void _startCountDown() {
    _otpCountDown= OTPCountDown.startOTPTimer(
        timeInMS: _otpTimeInMS,
        currentCountDown: (
            String countDown){
                    _countdown= countDown;
                    setState(() {});
        },
         onFinish: (){
          print("time over");
         },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
             // padding: EdgeInsets.only(top:50,left:20 ),
                      child: Center(
                            child: Column(
                                children: [
                                  SizedBox(height: 30,),
                                      Row(
                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                 Padding(
                                                   padding: const EdgeInsets.only(left: 15),
                                                   child: IconButton(
                                                      icon:Icon(
                                                          Icons.arrow_back_ios,
                                                          color: Colors.black,
                                                          size: 25,
                                                      ),
                                                      splashColor: Colors.grey,
                                                      onPressed: (){
                                                        Navigator.pop(context);
                                                      },
                                                   ),
                                                 )
                                              ],
                                      ),

                                      SizedBox(height: 30,),

                                      Text("Enter OTP",
                                          style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20
                                      ),),

                                      SizedBox(height: 40,),

                                      Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                  Icon(
                                                      Icons.message_rounded,
                                                      size: 42,
                                                      color: Colors.black,
                                                  )
                                            ],
                                      ),

                                      SizedBox(height: 40,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                         Container(
                                           height: 60,
                                           width: 60,
                                           decoration: BoxDecoration(
                                             color: Colors.grey[350],
                                             borderRadius: BorderRadius.circular(5),
                                           ),
                                           child: Center(
                                             child: TextField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide.none,
                                                    ),
                                                    hintText: " _",
                                                    hintStyle: TextStyle(
                                                    fontSize: 40,
                                                      fontWeight: FontWeight.bold,
                                                )
                                                ),
                                               keyboardType: TextInputType.number,
                                               inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(1)],
                                             ),
                                           ),
                                         ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[350],
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  hintText: " _",
                                                  hintStyle: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                              ),
                                              keyboardType: TextInputType.number,
                                              inputFormatters: [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(1)],
                                            ),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[350],
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                ),
                                                  hintText: " _",
                                                  hintStyle: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                              ),
                                              keyboardType: TextInputType.number,
                                              inputFormatters: [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(1)],
                                            ),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[350],
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                                  hintText: " _",
                                                  hintStyle: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                              ),
                                              keyboardType: TextInputType.number,
                                              inputFormatters: [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(1)],
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 40,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Text(
                                                    "You will receive your OTP in "+_countdown.toString(),
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                    ),
                                                ),
                                       ]
                                      ),

                                      SizedBox(height: 25,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignMain()));
                                            },
                                            child: Container(
                                              height: 41,
                                              width: 337,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.indigo[900],
                                              ),
                                                child: Center(
                                                  child: Text(
                                                      "Verify",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                        fontSize: 15,
                                                      ),
                                                  ),
                                                ),
                                            ),
                                          )
                                        ],
                                      ),

                                      SizedBox(height: 20,),

                                      Text("Didn't recieve a OTP? Resend OTP"),
                                ],
                            ),
                      ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose(){
    _otpCountDown.cancelTimer();
    super.dispose();
  }
}
