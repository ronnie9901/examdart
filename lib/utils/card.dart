import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        }, child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'card page',
        ),
      ),
    );
  }
}