import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
class Adde extends StatefulWidget {
  @override
  _AddeState createState() => _AddeState();
}

class _AddeState extends State<Adde> {
  String valueChoose;
  List lisItem=["item1","item2","item3","item4","item5","item6","item7","item8","item9","item10","item11","item12","item13"];
  String dropdownValue;

  int _selectedIndex=0;
  List<Widget>kk;
  void ontap(int index)
  {
    setState(() {
      _selectedIndex=index;
    });
  }

  int currentIndex;
  bool showRaisedButtonBadge=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=0;
  }
  changePage(int index)
  {
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final key=GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 20,
            ),
            onPressed: (){
              Navigator.pop(context);
            },),
          title: Text("Address",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 20),),
        ),
        body: Form(
            child: ListView(
                children: [
                  Container(
                      decoration: BoxDecoration(color: HexColor("#F6F6F6")),
                      child: Column(
                        children: [
                          SizedBox(width: 10,
                            height: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Text("Name"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,
                            height: 5,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: TextFormField(validator: (v)
                                  {
                                    if(v.isEmpty)
                                    {
                                      return("Field is Empty");
                                    }
                                    return null;
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(border: InputBorder.none,
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),SizedBox(width: 10,
                            height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Text("House Name"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: TextFormField(validator: (v)
                                  {
                                    if(v.isEmpty)
                                    {
                                      return("Field is Empty");
                                    }
                                    return null;
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(border: InputBorder.none,),
                                  ),
                                )
                              ],
                            ),
                          ),SizedBox(width: 10,
                            height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Text("Landmark"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: TextFormField(validator: (v)
                                  {
                                    if(v.isEmpty)
                                    {
                                      return("Field is Empty");
                                    }
                                    return null;
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(border: InputBorder.none,),
                                  ),
                                )
                              ],
                            ),
                          ),SizedBox(width: 10,
                            height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Text("City"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: TextFormField(validator: (v)
                                  {
                                    if(v.isEmpty)
                                    {
                                      return("Field is Empty");
                                    }
                                    return null;
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(border: InputBorder.none,),
                                  ),
                                )
                              ],
                            ),
                          ),SizedBox(width: 10,
                            height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                SizedBox(width: 0,),
                                Text("Delivery Area")
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                SizedBox(width: 0,),
                                Container(
                                  width: 330,
                                  height: 50,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.white),color: Colors.white),
                                  //width: 300,// MediaQuery.of(context).size.width,
                                  child: DropdownButton<String>(

                                    hint: Text("  Select                                                "),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_outlined,),
                                    dropdownColor: Colors.white,
                                    iconSize: 30,
                                    iconEnabledColor: Colors.black,
                                    isExpanded: true,
                                    // isExpanded: true,
                                    value: dropdownValue,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>['Kozhikode', 'Thrissur', 'Wayanad', 'Malappuram','Kannur','Kasargode','Kollam','Palakkad','Ernakulam'
                                      ,'TVM','Alapuzha','Idukki']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                )
                              ],
                            ),
                          ),SizedBox(width: 10,
                            height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Text("Pincode"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: TextFormField(validator: (v)
                                  {
                                    if(v.isEmpty)
                                    {
                                      return("Field is Empty");
                                    }
                                    return null;
                                  },
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(border: InputBorder.none,),
                                  ),
                                )
                              ],
                            ),
                          ),SizedBox(width: 10,
                            height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Text("Mobile"),
                              ],
                            ),
                          ), SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: TextFormField(validator: (v)
                                  {
                                    if(v.isEmpty)
                                    {
                                      return("Field is Empty");
                                    }
                                    return null;
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(border: InputBorder.none,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              GestureDetector(
                                onTap: (){
                                  if(key.currentState.validate())
                                  {

                                  }
                                },
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 50,width: 280,
                                    decoration:  BoxDecoration(color: HexColor("#1F1E59"),borderRadius: BorderRadius.circular(10)),
                                    // decoration:  BoxDecoration(color: Colors.indigo),
                                    child: Center(
                                      child: Text("SUBMIT",style: TextStyle(color: Colors.white),),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  )
                ])

        ),




        bottomNavigationBar:Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: ClipRRect(
            borderRadius : BorderRadius.only(
              bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
            child: BubbleBottomBar(
              opacity:0,
              backgroundColor: HexColor("#F5F8FA"),
              currentIndex: currentIndex,
              onTap: changePage,
              items: [
                BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                    icon: Positioned(
                      bottom: 0,
                      child: Icon(Icons.shopping_bag,color: HexColor("#97AABD"),
                      ),
                    ),
                    activeIcon: Icon(Icons.shopping_bag,color: HexColor("#1F1E59")
                      ,
                    ),
                    title: Text("Cart",style: TextStyle(color: HexColor("#1F1E59"),fontWeight: FontWeight.bold),
                    )
                ),
                BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                  icon:Icon(Icons.search_rounded,color: HexColor("#97AABD"),
                  ),
                  activeIcon: Icon(Icons.search_rounded,color: HexColor("#1F1E59"),
                  ),
                  title: Container(),
                ),
                BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                  icon:Icon(Icons.home_outlined,color: HexColor("#97AABD"),
                  ),
                  activeIcon: Icon(Icons.home_outlined,color: HexColor("#1F1E59"),
                  ),
                  title: Container(),
                ),
                BubbleBottomBarItem(backgroundColor: HexColor("#F5F8FA") ,
                  icon:Icon(Icons.person,color: HexColor("##1F1E59"),
                  ),
                  activeIcon: Icon(Icons.person,color: HexColor("#1F1E59"),
                  ),
                  title: Container(),
                ),
              ],

            ),
          ),
        )
    );
  }
}
