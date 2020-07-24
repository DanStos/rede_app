import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedViewIndex = 2;
  List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = AppRoutes.screens;
  }

  _selectScreen(int index) {
    setState(() {
      _selectedViewIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedViewIndex]['title']),
        centerTitle: true,
      ),
      body: _screens[_selectedViewIndex]['view'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedViewIndex,
        type: BottomNavigationBarType.fixed,
        items: _screens.map((screen) {
          return BottomNavigationBarItem(
            icon: Icon(screen['icon']),
            title: Text(screen['title']),
          );
        }).toList(),
      ),
    );
  }
}
