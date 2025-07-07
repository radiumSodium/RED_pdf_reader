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
          child: ListView.builder(
            itemCount: 5, // Replace with the actual number of recently opened files
            itemBuilder: (context, index) {
              return Card(
                color: Colors.red.shade500, // Set the card color to red
                margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.picture_as_pdf,
                    color: Colors.white,
                  ), // Set the icon color to white
                  title: Text(
                    'PDF File ${index + 1}', // Replace with actual file name
                    style: TextStyle(color: Colors.white), // Set the text color to white
                  ),
                  subtitle: Text(
                    'Opened recently', // Replace with actual file details
                    style: TextStyle(
                      color: Colors.white70,
                    ), // Set the subtitle color to a lighter white
                  ),
                  onTap: () {
                    // Handle file open action
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
