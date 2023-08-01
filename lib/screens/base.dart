import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/image_paths.dart';
import 'package:delivery_app_talentql/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Base extends StatefulWidget {
  static const String routeName = '/base';

  const Base({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BaseState();
  }
}

class _BaseState extends State<Base> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4,
        currentIndex: _currentIndex,
        selectedFontSize: 14.0,
        fixedColor: Palette.activeColorIcon,
        unselectedItemColor: Palette.inactiveColorIcon,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: ImageIcon(
                AssetImage(
                  ImagePaths.home,
                ),
                size: 25,
              ),
            ),
            label: '', // Add a label for the first item
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: ImageIcon(
                AssetImage(
                  ImagePaths.bookmark,
                ),
                size: 25,
              ),
            ),
            label: '', 
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: ImageIcon(
                AssetImage(
                  ImagePaths.send,
                ),
                size: 25,
              ),
            ),
            label: '', // Add a label for the third item
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: ImageIcon(
                AssetImage(
                  ImagePaths.settings,
                ),
                size: 25,
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
