import 'package:flutter/material.dart';

class MyTripsPage extends StatefulWidget {
  const MyTripsPage({super.key});

  @override
  State<MyTripsPage> createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0),
        child: ListView(children: [
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
        ]));
  }
}
