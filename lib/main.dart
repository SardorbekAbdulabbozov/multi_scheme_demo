import 'package:flutter/material.dart';
import 'package:multi_scheme_demo/brand_config.dart';

void main({AppScheme scheme = AppScheme.a}) async {
  WidgetsFlutterBinding.ensureInitialized();
  SchemeConfig.setScheme(scheme);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brandConfig = SchemeConfig.brandConfig;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: brandConfig.colors.primaryColor,
        appBar: AppBar(
          toolbarHeight: 0,
          centerTitle: true,
          backgroundColor: brandConfig.colors.primaryColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Image.asset(brandConfig.assets.logoPath),
            ),
            Text(
              "Brand Name: ${brandConfig.brandName}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
