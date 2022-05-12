import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageLink extends StatelessWidget {
  String image, link;

  ImageLink({required this.image, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(link);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.aspectRatio >= 0.85
            ? MediaQuery.of(context).size.width * 0.035
            : MediaQuery.of(context).size.width * 0.045,
        height: MediaQuery.of(context).size.aspectRatio >= 0.85
            ? MediaQuery.of(context).size.width * 0.0225
            : MediaQuery.of(context).size.width * 0.035,
        child: CircleAvatar(
          child: ClipOval(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
