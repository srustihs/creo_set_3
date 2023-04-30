import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key, key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
    BottomNavigationBarItem(
    icon: Container(
    margin: const EdgeInsets.only(left: 50),
    child: IconButton(
    onPressed: () {
    Navigator.pushNamed(context, HomeScreen.routeName);
    },
    icon: const Icon(Icons.home),
    ),
    ),
    label: 'Home'
    ),

    BottomNavigationBarItem(
    icon: Container(
    margin: const EdgeInsets.only(left: 50),
    child: IconButton(
    onPressed: () {
    print('No profile screen yet');
    },
    icon: const Icon(Icons.person),
    ),
    ),
    label: 'Profile',
    ),
    ],
    );
    }
}