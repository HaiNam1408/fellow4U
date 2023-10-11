import 'package:flutter/material.dart';
import '../explore_page/explore_page.dart';
import '../message_page/message_page.dart';
import '../my_trip_page/my_trips_page.dart';
import '../notification_page/notification_page.dart';
import '../profile_page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    ExplorePage(),
    MyTripsPage(),
    MessagePage(),
    NotificationPage(),
    ProfilePage()
  ];

  int currentIndex = 0;

  void onTapNavigatorBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_location_alt),
              label: 'My trips',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Color.fromARGB(255, 0, 206, 165),
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          onTap: onTapNavigatorBar),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'New Trip',
        backgroundColor: Color.fromARGB(255, 0, 206, 165),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
