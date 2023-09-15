import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(0),
          child: const Column(children: [
            SizedBox(
              child: Stack(children: [
                Image(
                  image: AssetImage('images/dragon_bridge.png'),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.search, color: Colors.white),
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(61, 88, 88, 88))))),
                Positioned(
                    bottom: 10,
                    left: 18,
                    child: Text(
                      'My Trips',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38.0,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    )),
              ]),
            )
          ])),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_alt,
                color: Color.fromARGB(255, 158, 158, 158)),
            label: 'My trips',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.message, color: Color.fromARGB(255, 158, 158, 158)),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: Color.fromARGB(255, 158, 158, 158)),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 158, 158, 158)),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color(0xFF00CE36),
        onTap: null,
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add your trip',
        child: Icon(Icons.add),
      ),
    );
  }
}


// MaterialStateProperty.resolveWith<Color?>(
//                       (Set<MaterialState> states) {
//                         if (states.contains(MaterialState.pressed)) {
//                           return Colors.deepPurple[300];
//                         }
//                         return Colors.deepPurple[100];
//                       },
//                     ),