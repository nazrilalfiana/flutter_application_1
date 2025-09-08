import 'package:flutter/material.dart';

class LayoutListview extends StatelessWidget {
  const LayoutListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listView'),
        backgroundColor: const Color.fromARGB(255, 0, 162, 255),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
        ],
      ),
    );
  }
}