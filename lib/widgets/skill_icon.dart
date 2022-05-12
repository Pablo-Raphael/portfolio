import 'package:flutter/material.dart';

class SkillIcon extends StatelessWidget {
  final String path;
  final bool lowSize;

  SkillIcon({this.lowSize = false, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: lowSize
              ? MediaQuery.of(context).size.width * 0.02
              : MediaQuery.of(context).size.width * 0.04),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(lowSize
            ? MediaQuery.of(context).size.width * 0.008
            : MediaQuery.of(context).size.width * 0.02),
        child: Image.asset(
          path,
          width: lowSize
              ? MediaQuery.of(context).size.width * 0.06
              : MediaQuery.of(context).size.width * 0.07,
          height: lowSize
              ? MediaQuery.of(context).size.width * 0.06
              : MediaQuery.of(context).size.width * 0.07,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
