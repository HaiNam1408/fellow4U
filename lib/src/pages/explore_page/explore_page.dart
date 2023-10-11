import 'package:fellow4U/src/pages/explore_page/widget/BestGuides.dart';
import 'package:fellow4U/src/pages/explore_page/widget/FeaturedTours.dart';
import 'package:fellow4U/src/pages/explore_page/widget/TopJourneys.dart';
import 'package:fellow4U/src/pages/explore_page/widget/TravelNews.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(228),
        child: SizedBox(
          height: 150,
          child: Stack(clipBehavior: Clip.none, children: [
            Image(
              image: AssetImage('images/dragon_bridge.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 28,
                left: 18,
                child: Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 28,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white, size: 20),
                        Text('Da Nang',
                            style: TextStyle(color: Colors.white, fontSize: 12))
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(Icons.cloud_outlined,
                            color: Colors.white, size: 32),
                        SizedBox(width: 8),
                        Text('26℃',
                            style: TextStyle(color: Colors.white, fontSize: 24))
                      ],
                    )
                  ],
                )),
            Positioned(
                bottom: -25,
                left: 20,
                right: 20,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 4)
                      ]),
                  child: TextField(
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 12),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.white)),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Hi, where do you want to explore?'),
                  ),
                ))
          ]),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 48),
        child: ListView(
          children: [
            TopJourneys(),
            BestGuides(),
            FeaturedTours(),
            TravelNews()
          ],
        ),
      ),
    );
  }
}
