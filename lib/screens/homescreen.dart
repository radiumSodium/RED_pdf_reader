
import 'package:flutter/material.dart';
import 'package:tutorial/components/extended_search_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        ExtendedSearchSection(),
        Flexible(
          child: Center(
            child: Text(
              "Recently opened files!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }

  
}
