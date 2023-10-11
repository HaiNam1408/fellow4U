import 'package:fellow4U/src/mixins/ColorTheme.dart';
import 'package:fellow4U/src/widgets/PageBanner.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: PageBanner(
            title: 'Notification', image: 'images/dragon_bridge.png'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 12),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFF5F5F5), width: 2))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('images/ha_thu.png'),
                                fit: BoxFit.cover,
                              ))),
                      Positioned(
                          width: 28,
                          height: 28,
                          bottom: -5,
                          right: -5,
                          child: IconButton(
                              padding: EdgeInsets.all(4),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber)),
                              onPressed: null,
                              icon: Icon(
                                Icons.file_copy_outlined,
                                size: 16,
                                color: Colors.white,
                              )))
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Emmy sent you an offer for the trip in Ho Chi Minh, Vietnam on Feb 12, 2020',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('Jan 16', style: TextStyle(fontSize: 13))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFF5F5F5), width: 2))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('images/Tuan_Tran_2.png'),
                                fit: BoxFit.cover,
                              ))),
                      Positioned(
                          width: 28,
                          height: 28,
                          bottom: -5,
                          right: -5,
                          child: IconButton(
                              padding: EdgeInsets.all(4),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsTheme.primary)),
                              onPressed: null,
                              icon: Icon(
                                Icons.location_on_outlined,
                                size: 16,
                                color: Colors.white,
                              )))
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tuan Tran accepted your request for the trip in Danang, Vietnam on Jan 20, 2020',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text('Jan 16', style: TextStyle(fontSize: 13))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFF5F5F5), width: 2))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('images/dai_hung.png'),
                                fit: BoxFit.cover,
                              ))),
                      Positioned(
                          width: 28,
                          height: 28,
                          bottom: -5,
                          right: -5,
                          child: IconButton(
                              padding: EdgeInsets.all(4),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              onPressed: null,
                              icon: Icon(
                                Icons.draw_outlined,
                                size: 16,
                                color: Colors.white,
                              )))
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thanks! Your trip in Danang, Vietnam on Jan 20, 2020 has been finished. Please leave a review for the guide Tuan Tran.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text('Jan 24', style: TextStyle(fontSize: 13)),
                          TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(horizontal: 16)),
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsTheme.primary)),
                              onPressed: null,
                              child: Text(
                                'Leave Review',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
