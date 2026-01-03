import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFF4444),
        appBar: AppBar(
          toolbarHeight: 0,
          title: Text("A"),
          centerTitle: true,
          backgroundColor: Color(0xFFFF4444),
        ),
        body: Center(child: Image.asset('assets/a.png')),
      ),
    );
  }
}
