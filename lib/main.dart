import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  int selectedIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sowoon')),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "홈",),
          BottomNavigationBarItem(icon: Icon(Icons.brush_outlined), label: "작품"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "채팅"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: "MY"),
        ],
        iconSize: 30,
        currentIndex: selectedIdx,

      ),
    );
  }
}