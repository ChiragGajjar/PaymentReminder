import 'package:flutter/material.dart';
import 'package:payment_app/Dashboard/dashboard.dart';
import 'package:payment_app/search_screen.dart';

import 'Utils/app_images.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  TabBarScreenState createState() => TabBarScreenState();
}

class TabBarScreenState extends State<TabBarScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _getBody(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF8EAFF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF8E04CE),
        unselectedLabelStyle: TextStyle(
            color: Colors.red
        ),
        onTap: (index){
          print(index);
          setState(() {
            selectedIndex = index;
            _getBody(index);

          });
        },
      ),
    );
  }
  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return SearchScreen(); // Create this function, it should return your first page as a widget
      case 1:
        return Dashboard(); // Create this function, it should return your second page as a widget
      case 2:
        return Dashboard(); // Create this function, it should return your third page as a widget
      case 3:
        return Dashboard(); // Create this function, it should return your fourth page as a widget
    }

    return Dashboard();
  }
}
