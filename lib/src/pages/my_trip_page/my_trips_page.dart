import 'package:fellow4U/src/pages/my_trip_page/widget/CurrentTrips.dart';
import 'package:fellow4U/src/pages/my_trip_page/widget/NextTrips.dart';
import 'package:fellow4U/src/pages/my_trip_page/widget/PastTrips.dart';
import 'package:fellow4U/src/pages/my_trip_page/widget/WishList.dart';
import 'package:fellow4U/src/widgets/PageBanner.dart';
import 'package:flutter/material.dart';

class MyTripsPage extends StatefulWidget {
  const MyTripsPage({super.key});

  @override
  State<MyTripsPage> createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(185),
        child: Column(
          children: [
            PageBanner(title: 'My Trips', image: 'images/dragon_bridge.png'),
            Container(
              child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Color.fromARGB(255, 119, 119, 119),
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 0, 206, 165),
                      borderRadius: BorderRadius.circular(6)),
                  indicatorSize: TabBarIndicatorSize.tab,
                  padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                  controller: _tabController,
                  dividerColor: Colors.white,
                  splashBorderRadius: BorderRadius.circular(6),
                  labelStyle: TextStyle(fontSize: 11),
                  tabs: [
                    Tab(text: 'Current Trips'),
                    Tab(text: 'Next Trips'),
                    Tab(text: 'Past Trips'),
                    Tab(text: 'Wish list'),
                  ]),
            )
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [CurrentTrips(), NextTrips(), PastTrips(), WishList()]),
    );

    // Container(
    //   padding: const EdgeInsets.all(0),
    //   child: Column(children: [
    //     SizedBox(
    //       child: Stack(children: [
    //         Image(
    //           image: AssetImage('images/dragon_bridge.png'),
    //           width: double.infinity,
    //           fit: BoxFit.fitWidth,
    //         ),
    //         Positioned(
    //             top: 36,
    //             right: 10,
    //             child: IconButton(
    //                 onPressed: null,
    //                 icon: Icon(Icons.search, color: Colors.white),
    //                 style: ButtonStyle(
    //                     backgroundColor: MaterialStatePropertyAll(
    //                         Color.fromARGB(61, 88, 88, 88))))),
    //         Positioned(
    //             bottom: 6,
    //             left: 18,
    //             child: Text(
    //               'My Trips',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 30,
    //                 fontWeight: FontWeight.w700,
    //                 shadows: [
    //                   Shadow(
    //                     offset: Offset(1.0, 1.0),
    //                     blurRadius: 2.0,
    //                     color: Colors.black45,
    //                   ),
    //                 ],
    //               ),
    //             )),
    //       ]),
    //     ),
    //     Container(
    //       child: TabBar(
    //           labelColor: Colors.white,
    //           unselectedLabelColor: Color.fromARGB(255, 119, 119, 119),
    //           labelPadding: EdgeInsets.zero,
    //           indicator: BoxDecoration(
    //               color: Color.fromARGB(255, 0, 206, 165),
    //               borderRadius: BorderRadius.circular(6)),
    //           indicatorSize: TabBarIndicatorSize.tab,
    //           padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
    //           controller: _tabController,
    //           dividerColor: Colors.white,
    //           splashBorderRadius: BorderRadius.circular(6),
    //           labelStyle: TextStyle(fontSize: 11),
    //           tabs: [
    //             Tab(text: 'Current Trips'),
    //             Tab(text: 'Next Trips'),
    //             Tab(text: 'Past Trips'),
    //             Tab(text: 'Wish list'),
    //           ]),
    //     ),
    //     Container(
    //       height: MediaQuery.of(context).size.height - 273,
    //       width: double.maxFinite,
    //       child: TabBarView(controller: _tabController, children: [
    //         CurrentTrips(),
    //         NextTrips(),
    //         PastTrips(),
    //         WishList()
    //       ]),
    //     )
    //   ]));
  }
}
