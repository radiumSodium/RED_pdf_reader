import 'package:flutter/material.dart';
import 'package:tutorial/components/custom_app_bar.dart';
import 'package:tutorial/screens/favourite_screen.dart';
import 'package:tutorial/screens/homescreen.dart';
import 'package:tutorial/screens/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late final PageController _pageController;
  final List<Widget> _screens = [HomeScreen(), FavouriteScreen(), SettingsPage()];

  @override
  void initState() {
    _pageController = PageController(initialPage: _selectedIndex);
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(_selectedIndex),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          FavouriteScreen(),
          SettingsPage(),
        ], // Disable swipe navigation
      ),
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
          NavigationDestination(icon: Icon(Icons.favorite_rounded), label: 'Favourties'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
