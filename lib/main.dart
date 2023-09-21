import 'package:fellow4U/pages/message_page/message_page.dart';
import 'package:fellow4U/pages/notification_page/notification_page.dart';
import 'package:fellow4U/pages/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:fellow4U/pages/explore_page/explore_page.dart';
import 'package:fellow4U/pages/my_trip_page/my_trips_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fellow4U',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00CE36)),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
