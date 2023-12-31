import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/main%20screen/buy%20car/buy_car_screen.dart';
import 'package:cars_store/view/main%20screen/community/community_screen.dart';
import 'package:cars_store/view/main%20screen/home/home_screen.dart';
import 'package:cars_store/view/main%20screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  final tabs = [
    const HomeScreen(),
    const BuyCarScreen(),
    const CommunityScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorHelper.secondryColor,
          unselectedItemColor: ColorHelper.iconColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Buy car",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ]),
    );
  }
}
