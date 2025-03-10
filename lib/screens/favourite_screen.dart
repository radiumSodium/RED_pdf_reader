import 'package:flutter/material.dart';
import 'package:tutorial/components/extended_search_section.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ExtendedSearchSection(),
        Flexible(
          child: Center(
            child: Text(
              "Favourite files!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }
}
