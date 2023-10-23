import 'package:flutter/material.dart';
import 'package:moody/core/application_theme.dart';
import 'package:moody/screens/FirstScreen/first_screen.dart';
import 'screens/SecondScreen/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

int SelectedIndex = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IndexedStack(
        index: SelectedIndex,
        children: [FirstScreen(),SecondScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            SelectedIndex = index;
          });
        },
        currentIndex: SelectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home.png")),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/grid.png")),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/calendar.png")),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/profile.png")),
            label: "",
          ),
        ],
      ),
    );
  }
}
