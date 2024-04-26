

import 'package:examdart/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detalsState();
}

class _detalsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'details page',
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
       ...List.generate(card.length, (index) => Containe(img: card[index]['img'], index: index)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('bMW serius ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                Text('coupe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.bike_scooter),

                    ),
                    SizedBox(height: 10,),
                    Text('ability'),
                    Text('4 seat',style: TextStyle(
                        fontSize: 25
                    ),)
                  ],
                ),
                Column(
                  children: [Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.engineering_outlined),
                  ),
                    SizedBox(height: 10,),
                    Text('engine'),
                    Text('V1 45',style: TextStyle(
                        fontSize: 25
                    ),)],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.speed),
                    ),
                    SizedBox(height: 10,),
                    Text('max speed'),
                    Text('310km/h',style: TextStyle(
                      fontSize: 25
                    ),)
                  ],
                ),
              ],

            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 300,
              width: double.infinity,
             decoration: BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.vertical(top: Radius.circular(15))
             ),child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(

                 children: [
                   Row(
                    children: [

                      Text('Rent price ',style: TextStyle(
                        fontSize: 25
                      ),),
                      SizedBox(width: 75,),
                      Text('30000',style: TextStyle(
                        fontSize: 20
                      ),),
                      Text('1 day rental')
                    ],

                   ),
                   Container(
                     alignment: Alignment.center,
                     margin: EdgeInsets.only(top: 160),
                     height: 70,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.black,

                     ),
                     child: InkWell(onTap:() {

                      Navigator.of(context).pushNamed('/card');
                       setState(() {
                        // card.add(product[index]);

                       });
                     },
                       child: Text(' add now',style: TextStyle(
                         color: Colors.white,fontSize: 25
                       ),),
                     ),
                   )
                 ],

               ),

             ),

            ),

          ],

        
        ),
      ),


    );
  }

  Container Containe({required  String img,required int index}) {
    return Container(
            height: 200,
            width: double.infinity,
           decoration: BoxDecoration(
             color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(
               img

                )
              )
           ),
          );
  }
}
