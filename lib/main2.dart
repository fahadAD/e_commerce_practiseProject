import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

import 'main5.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex=0;

  @override
  Widget build(BuildContext context) {

    List<Widget> _demo=[
      buildDesign(),
      buildDesign(),
      buildDesign(),
      buildDesign(),
    ];
    Size size=MediaQuery.of(context).size;
    return Scaffold(

   appBar:AppBar(),

    body: SingleChildScrollView(
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                    height: 60,
                    width: size.width*0.7,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(
                      onTap: (){
                        showSearch(
                            context: context,
                            delegate: MySearchDelegate()
                        );
                      },
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    )),
               ),

              Stack(
                clipBehavior: Clip.none,
                children: [

                  Container(
                    height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange
                      ),
                      child: IconButton(onPressed: (){

                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text("do you want to exit"),
                            actions: [TextButton(onPressed: (){
                               Navigator.pop(context);
                            }, child: Text("Yes"))],
                          );
                        });
                      }, icon: Icon(Icons.notifications_sharp,size: 35,))),
                  Positioned(
                    right: -4,
                    top: -3,

                    child: Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ],
          ),





          SizedBox(
            height: 230,
             child: PageView(
              children: _demo,
scrollDirection: Axis.horizontal,

              onPageChanged: (index){
                setState(() {
                  pageIndex=index;
                });
              },
            ),
          ),
          SizedBox(height: 20,),
          CarouselIndicator(
            height: 13,
           activeColor: Colors.black,
            color: Colors.blue,
            count: _demo.length,
            index: pageIndex,
          ),
          SizedBox(height: 20,),

           

          GridView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount:  11,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,


              ),
              itemBuilder: (context,indext){

            return  Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfHOKSMdkK7Y1-XIuhzu7Gqo7gZ2ggrikbjaj65kHjVSYKD5D1ZFNpkvhMacG9TyleREs&usqp=CAU",
                    height: 250,
                    width: 330,
                    fit: BoxFit.fill,


                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 10,
                    child: ElevatedButton(onPressed: (){}, child: Text("Model No: A5G3 Price = 89",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),
                Positioned(
                    bottom: 3,
                    right: 1,
                    child: TextButton(onPressed: (){}, child: Icon(Icons.monetization_on,color: Colors.orange,))),
                Positioned(
                    right: 3,

                    child: ElevatedButton(onPressed: (){}, child: Icon(Icons.shopping_cart)))

              ],
            );
          }),





        ],
      ),
    ),

    );
  }

  Widget buildDesign() {
    return Stack(
         children: [
           Card(
             child:
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkifWjEOi83fEIOJae_zK9phgu3Q5GrS-Cxw&usqp=CAU",

                 width: 400,
                 fit: BoxFit.fill,

                 ),
             ),
              ),
           ),


 Positioned(
   bottom: 10,
   right: 30,
   child: ElevatedButton(onPressed: (){}, child: Icon(Icons.shopping_cart,size: 30, ), ))

         ],
       );
  }
}
