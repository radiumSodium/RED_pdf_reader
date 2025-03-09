import 'package:flutter/material.dart';
import 'package:tutorial/components/custom_app_bar.dart';
import 'package:tutorial/screens/homescreen.dart';
import 'package:tutorial/screens/profilescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [HomeScreen(), ProfileScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  NavigationBarTheme CustomNavigationBar() {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.white.withAlpha(100),
        labelTextStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white.withAlpha(500))),
        iconTheme: WidgetStatePropertyAll(IconThemeData(color: Colors.white)),
      ),
      child: NavigationBar(
        backgroundColor: Colors.red,
        surfaceTintColor: Colors.transparent,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  
}
