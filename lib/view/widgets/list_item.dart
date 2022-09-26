import 'package:flutter/material.dart';
import 'package:listed_app/utils/styles.dart';

class ListItem extends StatelessWidget {
  final String text;
  final String icon;
  const ListItem({Key? key, required this.text, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 56,
        width: 328,
        margin: EdgeInsets.only(top: 4, bottom: 4),
        padding: EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              offset: Offset(0.0, 1.0),
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Row(children: [
         ImageIcon(AssetImage(icon), color: deepOrange,),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: darkGray,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            size: 27,
          )
        ]),
      ),
    );
  }
}
