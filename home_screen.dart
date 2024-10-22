import 'package:flutter/material.dart';
import 'package:pspcl/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Search Screen')),
    const Center(child: Text('Notification Screen')),
    ProfileScreen(), // Directly use the ProfileScreen here
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 // Show app bar only for Home Screen
          ? AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      )
          : null, // No app bar for other screens
      body: Column(
        children: [
          Expanded(
            child: _children[_currentIndex], // Show the currently selected child
          ),
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
          Container(
            color: Colors.blue, // Blue background color
            padding: const EdgeInsets.symmetric(vertical: 8), // Padding for the text
            child: const Center(
              child: Text(
                'Punjab State Power Corporation Limited',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10, // Font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
