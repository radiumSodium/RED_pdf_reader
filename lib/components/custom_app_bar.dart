import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar(int index) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "RED",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child:
              index == 2
                  ? Container()
                  : Hero(
                    tag: 'profile_avatar',
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(
                        'assets/images/circle.png',
                      ), // Replace with your image asset
                    ),
                  ),
        ),
      ],
    ),
    backgroundColor: Colors.red,
    elevation: 0,
  );
}
