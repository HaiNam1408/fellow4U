import 'package:fellow4U/src/mixins/ColorTheme.dart';
import 'package:flutter/material.dart';

import '../../widgets/Heading.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(228),
        child: SizedBox(
          height: 150,
          child: Stack(clipBehavior: Clip.none, children: [
            Image(
              image: AssetImage('images/cover_image.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 12,
                right: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(height: 40),
                    Icon(Icons.camera_alt, color: Colors.white)
                  ],
                )),
            Positioned(
                bottom: -70,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              image: AssetImage('images/dai_hung.png'),
                              height: 100,
                              width: 100,
                            )),
                        Positioned(
                            height: 30,
                            width: 30,
                            bottom: -15,
                            child: Container(
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: OvalBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: IconButton(
                                  padding: EdgeInsets.all(4),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.camera_alt_sharp,
                                    color: ColorsTheme.primary,
                                    size: 20,
                                  )),
                            ))
                      ],
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Text(
                          'Đại Hưng',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'daihung@gmail.com',
                          style: TextStyle(color: ColorsTheme.textcolor),
                        )
                      ],
                    )
                  ],
                ))
          ]),
        ),
      ),
      // body: ListView(
      //   children: [
      //     Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Heading(title: 'My Photos'),
      //             TextButton(
      //                 onPressed: null,
      //                 child: Text(
      //                   '⨠',
      //                   style:
      //                       TextStyle(fontSize: 14, color: ColorsTheme.primary),
      //                 ))
      //           ],
      //         ),
      //         SizedBox(height: 10),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
