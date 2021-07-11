
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/page12mycart.dart';

class HomeCat11 extends StatefulWidget {
  @override
  _HomeCat11State createState() => _HomeCat11State();
}

class _HomeCat11State extends State<HomeCat11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(

          children: [
            Row(
              children: [
                Container(
                  height: 453,
                  width:360,
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 453,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.indigo[900]
                          ),
                        ),
                      ) ,
                      Positioned(
                        bottom: -10,
                        left: 25,
                        child: Image.asset(
                          "images/pg11shampoo.png",
                          height: 333,
                          width: 333,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:11.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 325,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.black)
                      border: Border(
                        bottom: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text(
                            "Shampoo",
                            style: TextStyle(
                                fontSize: 21
                            ),
                          ),
                          subtitle: Text(
                            "Instock",
                            style: TextStyle(
                                fontSize: 19
                            ),
                          ),
                          trailing: Text(
                            "₹148",
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                        )
                      ],

                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:11, right: 12),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 326,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text("Check Delivery"),
                          subtitle: TextField(
                            decoration: InputDecoration(
                              // border: OutlineInputBorder(),
                                hintText: "Enter pincode",
                                hintStyle: TextStyle(fontSize: 14)
                            ),
                          ),
                          trailing: Container(
                            height: 25,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Colors.indigo[900],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: Text(
                                "Proceed",
                                style: TextStyle(

                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "images/pg11text.png",
                  //height: ,
                  width: 350,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text(
                  "Recommended Products",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(

                  children: [
                    Column(
                      children: [
                        Container(

                          padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 5),
                          height: 140,
                          width: MediaQuery.of(context).size.width/4,
                          decoration: BoxDecoration(
                              color: Colors.blue[100]
                          ),
                          child: Stack(
                            children: [

                              Positioned(
                                  child: Image.asset("images/pg11shampoo.png")
                              ),

                              Positioned(
                                  bottom: 18,
                                  child:Text(
                                      "Shampoo"
                                  )),

                              Positioned(
                                bottom: 20,
                                right: 5,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Text(
                                      "₹148"
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 5,
                                  child: Text(
                                      "₹200",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough
                                      ))),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                          height: 140,
                          width: MediaQuery.of(context).size.width/4,
                          decoration: BoxDecoration(
                              color: Colors.blue[100]
                          ),
                          child: Stack(
                            children: [

                              Positioned(
                                  child: Image.asset("images/soap.png")
                              ),

                              Positioned(
                                  bottom: 18,
                                  child:Text(
                                      "KLAR"
                                  )),

                              Positioned(
                                bottom: 20,
                                right: 5,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Text(
                                      "₹148"
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 5,
                                  child: Text(
                                      "₹200",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough
                                      ))),

                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                          height: 140,
                          width: MediaQuery.of(context).size.width/4,
                          decoration: BoxDecoration(
                              color: Colors.blue[100]
                          ),
                          child: Stack(
                            children: [

                              Positioned(
                                  child: Image.asset("images/pg11shampoo.png")
                              ),

                              Positioned(
                                  bottom: 18,
                                  child:Text(
                                      "Shampoo"
                                  )),

                              Positioned(
                                bottom: 20,
                                right: 5,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Text(
                                      "₹148"
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 5,
                                  child: Text(
                                      "₹200",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough
                                      ))),

                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
                          height: 140,
                          width: MediaQuery.of(context).size.width/4,
                          decoration: BoxDecoration(
                              color: Colors.blue[100]
                          ),
                          child: Stack(
                            children: [

                              Positioned(
                                  child: Image.asset("images/soap.png")
                              ),

                              Positioned(
                                  bottom: 18,
                                  child:Text(
                                      "Shampoo"
                                  )),

                              Positioned(
                                bottom: 20,
                                right: 5,
                                child:Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Text(
                                      "₹148"
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 5,
                                  child: Text(
                                      "₹200",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough
                                      ))),

                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 26.5,right: 20.5),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
                    },
                    child: Container(
                      height: 48,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.indigo[900],
                          borderRadius: BorderRadius.circular(3)
                      ),
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
