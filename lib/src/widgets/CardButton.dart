import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final List actions;
  final Map<String, IconData> iconMap = {
    'detail': Icons.format_list_bulleted,
    'chat': Icons.sms_outlined,
    'pay': Icons.payment_outlined
  };

  List<Widget> listAction() {
    if (actions.length == 0) return [];
    List<Widget> actionList = [];
    for (var action in actions) {
      actionList.add(Container(
        margin: EdgeInsets.only(right: 4, left: 4),
        child: ElevatedButton.icon(
          onPressed: null,
          icon: Icon(
            iconMap[action],
            color: Color.fromARGB(255, 0, 206, 165),
            size: 22,
          ),
          label: Text(
            action,
            style: TextStyle(
                color: Color.fromARGB(255, 0, 206, 165), fontSize: 12),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                    width: 1, color: Color.fromARGB(255, 0, 206, 165)))),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Color.fromARGB(165, 0, 206, 165);
                } else
                  return Colors.transparent;
              },
            ),
          ),
        ),
      ));
    }
    return actionList;
  }

  CardButton({Key? key, required this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 0, 12, 16),
      child: Row(children: listAction()),
    );
  }
}
