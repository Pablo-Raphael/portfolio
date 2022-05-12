import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  String text;
  String subtext;
  TitleText(this.text, {this.subtext = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.1,
          bottom: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.aspectRatio >= 0.85
                    ? MediaQuery.of(context).size.width * 0.025
                    : MediaQuery.of(context).size.width * 0.03,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),

            subtext != ""
                ? Text(
                    subtext,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio >= 0.85
                          ? MediaQuery.of(context).size.width * 0.015
                          : MediaQuery.of(context).size.width * 0.020,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  )
                : const SizedBox(),
          ],
        ));
  }
}
