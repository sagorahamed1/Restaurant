import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("this is category screen"),
          Text("this is category screen",style: TextStyle(fontFamily: "TrajanPro"),),
          Text(
            "this is category screen",
            style: TextStyle(fontFamily: "Poppins"),
          ),
        ],
      ),
    );
  }
}
