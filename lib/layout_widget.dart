import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Layout Widget',
          style: TextStyle(
            fontFamily: 'title',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 0, 255),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                ),
                child: ClipOval(
                  child: Image.asset('images/udil.jpeg', fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Nazril ALfiana',
                  style: TextStyle(
                    fontFamily: 'font1',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Pelajar Sekolah Menengah Kejuruan',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Jurusan Rekayasa Perangkat Lunak',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CALL
                ElevatedButton.icon(
                  icon: Icon(Icons.call),
                  label: Text('CALL'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 204, 255),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    // Aksi tombol CALL
                    
                  },
                ),
                SizedBox(width: 20),
                
                ElevatedButton.icon(
                  icon: Icon(Icons.map),
                  label: Text('ROUTE'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 183, 255),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    // Aksi tombol ROUTE
                   
                  },
                ),
                SizedBox(width: 20),
                
                ElevatedButton.icon(
                  icon: Icon(Icons.share),
                  label: Text('SHARE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 248, 248),
                    foregroundColor: Color.fromARGB(255, 0, 204, 255),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    // Aksi tombol SHARE
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}