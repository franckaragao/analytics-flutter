import 'package:analytics_flutter/app/screens/dashboard/dashboard.dart';
import 'package:analytics_flutter/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  final String title = 'Home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    DashboardScreen(Colors.pink)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text('Configurações')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.exit_to_app),
            title: new Text('Sair')
          ),
        ]
      ),
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 2:
        Navigator.of(context).pushReplacementNamed(Routes.login);
        break;
    }
    setState(() {
      if (tabIndex <= tabs.length - 1) {
      currentTabIndex = tabIndex;
      }
    });
  }
}
