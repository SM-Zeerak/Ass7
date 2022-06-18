





import 'package:assignment7/Screens/BottomNavBar/components/tabs/chat_page.dart';
import 'package:assignment7/Screens/BottomNavBar/components/tabs/feed_page.dart';
import 'package:assignment7/Screens/BottomNavBar/components/tabs/home_page.dart';
import 'package:assignment7/Screens/BottomNavBar/components/tabs/profile_page.dart';
import 'package:flutter/material.dart';



class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screens = [
   HomePage(),
   FeedPage(),
   ChatPage(),
   ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Nav Bar"),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Feed",
            backgroundColor: Colors.red
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
            backgroundColor: Colors.blue
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.green
          ),
        ],
      ),
  );
    
  }
