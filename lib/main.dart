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
      title: 'Multi-Scheme/Flavor Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("Multi-Scheme/Flavor Demo"))),
    );
  }
}
