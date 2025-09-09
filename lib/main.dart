import 'package:flutter/material.dart';
// import 'gas.dart';
// import 'layout_listiem.dart';
// import 'layout_grid.dart';
// import 'layout_orizontal.dart';
// import 'layout_view.dart';
import 'layout_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : LayoutWidget()
    );
  }
}