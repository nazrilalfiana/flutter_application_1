import 'package:flutter/material.dart';

class listgri extends StatelessWidget {
  const listgri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Dan GridView'),
        backgroundColor: const Color.fromARGB(255, 0, 162, 255),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Menu Aplikasi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
           ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
          ),
           ListTile(
            leading: Icon(Icons.gamepad),
            title: Text('Gamepad'),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Warna Horizotal:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 160, color: Colors.red),
                Container(width: 160, color: Colors.blue),
                Container(width: 160, color: Colors.green),
                Container(width: 160, color: Colors.yellow),
                Container(width: 160, color: Colors.orange),
                Image.asset('images/udil.jpeg',width: 160,),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Grid Item:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true, 
            physics: NeverScrollableScrollPhysics(), 
            children: List.generate(20, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(fontSize: 20),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
