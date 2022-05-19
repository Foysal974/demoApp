
import 'package:flutter/material.dart';

class MyCustomTile extends StatelessWidget {
  String title;
  IconData? icon;
  VoidCallback onClickedEvant;

  MyCustomTile({required this.title, required this.icon, required this.onClickedEvant});


  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onClickedEvant,
        title: Text(title),
        leading: CircleAvatar(
          child:icon==null?Text(title[0]):Icon(icon),
        )

    );
  }
}
