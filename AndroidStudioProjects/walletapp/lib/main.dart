import 'package:flutter/material.dart';

import 'Backend/backend.dart';
import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
  fun();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MainApp(),
    );}}
enum TabItem {home, explore, notification, setting}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();

}

class _MainAppState extends State<MainApp> {
  final List<TabItem> _bottomTabs = [
    TabItem.home,
    TabItem.explore,
    TabItem.notification,
    TabItem.setting
  ];
  TabItem _currentItem = TabItem.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1C29),
      bottomNavigationBar: _bottomNavigationBar(),
      body: _buildScreen(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF343744).withOpacity(1),
      type: BottomNavigationBarType.fixed,
      items: _bottomTabs.map((tabItem) => _bottomNavigationBarItem(_icon(tabItem), tabItem)).toList(),
      onTap: _onSelectTab,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(IconData icon,
      TabItem tabItem) {
    final Color color =
    _currentItem == tabItem ? Colors.white : Colors.white54;

    return BottomNavigationBarItem(icon: Icon(icon, color: color), label: '');
  }

  void _onSelectTab(int index) {
    TabItem selectedTabItem = _bottomTabs[index];

    setState(() {
      _currentItem = selectedTabItem;
    });
  }

  IconData _icon(TabItem item) {
    switch (item) {
      case TabItem.home:
        return Icons.account_balance_wallet;
      case TabItem.explore:
        return Icons.explore;
      case TabItem.notification:
        return Icons.notifications;
      case TabItem.setting:
        return Icons.settings;
      default:
        throw 'Unknown $item';
    }
  }

  Widget _buildScreen() {
    switch (_currentItem) {
      case TabItem.home:
        return const HomeScreen();
      case TabItem.explore:
      // return HomeScreen();
      case TabItem.notification:
      // return HomeScreen()
      case TabItem.setting:
      // return HomeScreen()
      default:
        return const HomeScreen();
    }
  }
}
