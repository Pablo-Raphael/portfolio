import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyMenuItem extends StatelessWidget {
  String title, link;
  IconData icon;

  MyMenuItem(this.title, this.link, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          launch(link);
        },
        tileColor: const Color.fromARGB(200, 0, 0, 0),
      horizontalTitleGap: 0,
        leading: Icon(
          icon,
          color: Colors.green,
        ),

        title: Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15.5
          ),
          //maxLines: 1,
        ),
      );
  }
}