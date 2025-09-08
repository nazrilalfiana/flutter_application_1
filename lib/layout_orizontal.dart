import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('LisView_Horizontal '),
        backgroundColor: const Color.fromARGB(255, 255, 72, 0),
        
      ),
      body: SizedBox(
        height: 150,
        child: ListView(scrollDirection: Axis.horizontal,
        children: [
          Container(width: 160,color: Colors.red,),
           Container(width: 160,color: Colors.blue,),
            Container(width: 160,color: Colors.green,),
             Container(width: 160,color: Colors.yellow,),
              Container(width: 160,color: Colors.orange,),
           
        ],
        ), //scroll kesmping

      ),
    );
  }
}