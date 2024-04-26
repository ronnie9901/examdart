import 'package:examdart/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Homepage extends StatefulWidget {
   const Homepage({super.key});

   @override
   State<Homepage> createState() => _HomepageState();
 }

 class _HomepageState extends State<Homepage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text('homepage'),

          ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 40,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(10)
         
                 ),
                 child: Row(
                   children: [
                     
                     Icon(Icons.search),
                     Text('search',),
                   ],
                 ),
               ),
               
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('  hello , Rotor',style: TextStyle(fontSize: 30),),
         
               ],
               
             ),
             Row(
               children: [
                 Container(
                   alignment: Alignment.center,
                   margin: EdgeInsets.all(10),
                   height: 30,
                   width: 70,
                   decoration: BoxDecoration(
                     color: Colors.black12,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Text('brands'),
                   
                 ),
         
               ],
         
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               
               child: Row(
                 children: [
                   ...List.generate(name.length, (index) => home(nam: name[index]['nam']))
                 ],
               ),
             ),
             Column(
               children: [
                ...List.generate(product.length, (index) => con(name: product[index]['name'], img: product[index]['img'], price: product[index]['price']))
               ],
             )
           ],
         
         ),
       ),




     );
   }

   Container con( {required  String name,required  String img,required  int price}) {
     return Container(
               margin: EdgeInsets.all(10),
               height: 200,
               width: double.infinity,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image: NetworkImage(
                     img
                   )
                 ),
                 color: Colors.black12,
                 borderRadius: BorderRadius.circular(10)

               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(' $name ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     Text(' coupe ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     SizedBox(height: 95,),
                   Row(
                     children: [  Text('$price',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Text(' 1 day Rental ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 70,),
                    Container(
                      height: 30,
                      width: 50,

                      decoration: BoxDecoration(
                        color: Colors.black,

                      ),
                      child: InkWell(onTap: () {
                        ;Navigator.of(context).pushNamed('/details');

                      },
                        child: Icon(
                          CupertinoIcons.arrow_right,color: Colors.white,
                        ),
                      ),
                    )],

                   )
                   ],


                 ),

               ),


             );
   }

   Widget home( { required String nam}) {
     return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 alignment: Alignment.center,
                 height: 30,
                 width: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)

                ),
                 child:Text(nam),
               ),

             );


   }
 }
