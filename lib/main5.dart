import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate{
  List <String> lists=[
    "hello",
    "jjjjjjj",
    "aaaaaaa",
  ];


  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return ThemeData(
           appBarTheme: AppBarTheme(color: Colors.cyanAccent)
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        query = '';
      },
    ),];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

 var data=query.isEmpty? lists:lists.where((element) => element.startsWith(query)).toList();

     return
       data.isNotEmpty
       ?
       ListView.builder(
         itemCount: data.length,
         itemBuilder: (BuildContext context, int index) {



      return ListTile(
        title: Text(data[index]),
      );
    },):Center(child: Text("not showing"),);
  }



}