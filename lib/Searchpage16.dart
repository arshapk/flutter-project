import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants/HexColor.dart';
class Searchpage extends StatefulWidget {
  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
        icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
        ),
        title: Text("Search",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          })
        ],
      ),
      // drawer: Drawer(),
    );
  }
}
class DataSearch extends SearchDelegate<String>{
  final data=[
    "Beauty tips",
    "Dove soap",
    "Facewash",
    "Lipbam",
    "Conditioner",
    "Handwash",
    "Powder",
    "Spray",
    "Earrings",
    "Toys",
    "Soap",
    "Cream",
    "Vegitables"
    ,"Instanst Food",
    "Beauty",
    "Fruits",
    "shampoo",
    "Soap",
    "Rice",
    "Apple"
  ];
  final recent=["shampoo","Soap","Rice","Apple"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading
    return IconButton(icon: AnimatedIcon
      (icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,),
        onPressed: (){
          close(context, null);
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when someone searches for something
    final suglist=query.isEmpty?recent:data.where((p) => p.startsWith(query)).toList();
    return ListView.builder(itemCount: suglist.length,
        itemBuilder: (context,index)=>
            ListTile(
              title: RichText(text:
              TextSpan(
                  text: suglist[index].substring(0,query.length),
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suglist[index].substring(query.length),
                        style: TextStyle(color: Colors.grey)
                    )
                  ]
              ),
              ),
            )
    );
  }
}