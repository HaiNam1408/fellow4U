import 'package:flutter/material.dart';

class CardMark extends StatelessWidget {
  final String status;
  const CardMark({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case 'finished':
        return ElevatedButton.icon(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 1, color: Colors.black38)))),
            onPressed: null,
            icon: Icon(Icons.check, color: Colors.black),
            label: Text(
              'Mark Finished',
              style: TextStyle(color: Colors.black),
            ));
      case 'waiting':
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            'Waiting',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        );
      case 'bidding':
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            'Bidding',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        );
      default:
        return SizedBox();
    }
  }
}
