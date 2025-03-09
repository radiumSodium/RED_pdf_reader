import 'package:flutter/material.dart';
AppBar CustomAppBar() {
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
            child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(
                'assets/images/circle.png',
              ), // Replace with your image asset
            ),
          ),
        ],
      ),
      backgroundColor: Colors.red,
      elevation: 0,
    );
  }