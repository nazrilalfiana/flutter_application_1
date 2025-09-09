import 'package:flutter/material.dart';
 //class abstrak
abstract class listItem{
  Widget buildTitle(BuildContext context); //judul
  Widget buildSubtitle(BuildContext context); //subjudul
}
//class heading tem menampilkan item
class HeadingItem implements listItem {
  final String heading; // isi judul
  HeadingItem(this.heading); // constructor

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall, // gaya teks besar
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink(); // kosong
}
// 3.mesagge item isi dari pesan
class MessageItem implements listItem {
    final String sender;
    final String body;
    MessageItem(this.sender,this.body);

     @override
     Widget buildTitle(BuildContext context){
      return Row(
        children: [
          Icon(Icons.message),
          Text(sender )
        ],
        );
     }
   
    @override
    Widget buildSubtitle(BuildContext context) => Text(body,style: TextStyle(fontSize: 12),);
}

// --- Widget utama ---
class LayoutListItem extends StatelessWidget {
  const LayoutListItem({super.key});

  @override
  Widget build(BuildContext context) {
    // 4. Data contoh
    final List<listItem> items = List<listItem>.generate(
      20,
      (i) => i % 6 == 0
          ? HeadingItem('Heading $i') //jika kelipatan 6 judul
          : MessageItem('Sender $i', 'Message body $i'), //elain itu pesan
    );

    return Scaffold(
      appBar: AppBar(title: const Text("List dengan Berbagai Item")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}

