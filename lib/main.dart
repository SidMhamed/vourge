import 'package:flutter/material.dart';
import 'package:vourge/details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Smart SM SA",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: SafeArea(child: CompanyDetailsPage()),
      ),
    );
  }
}
