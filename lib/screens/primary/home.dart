import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/primary/tab_navigation_item.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({Key key}) : super(key: key);

  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(icon: tabItem.icon, title: tabItem.title)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
      // Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/search');
      //     },
      //     child: Text('Launch screen'),
      //   ),
      // ),
    );
  }
}
