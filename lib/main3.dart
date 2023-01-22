
import 'package:flutter/material.dart';
class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List <String>  catagoryLists=[
    "pant","Shirt",  "Lungi","T Shirt",  "Coat","Bealt",  "panty","Perfume",
  ];
int? selectIndext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [


 SizedBox(
   height:  60,
   child: ListView.builder(

     primary: false,
     shrinkWrap: true,

     scrollDirection: Axis.horizontal,
     itemCount:catagoryLists.length ,
     itemBuilder: (BuildContext context, int index) {


     return  GestureDetector(
       onTap: (){
         selectIndext=index;
       },
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           decoration: BoxDecoration(
             color:  selectIndext==index?Colors.black:Colors.blueGrey
           ),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(catagoryLists[index],style: TextStyle(color: Colors.red)),
           ),
         ),
       ),
     );
   },),
 ),

          selectIndext==0?Text("pant"):
          selectIndext==1?Text("Shirt"):

          selectIndext==2?Text("Lungi"):
          selectIndext==3?Text("T Shirt"):
          selectIndext==4?Text("Coat"):
          selectIndext==5?Text("Bealt"):

          selectIndext==6?Text("panty"):
          selectIndext==7?Text("Perfume"):Container()
        ],
      ),

    );
  }
}
