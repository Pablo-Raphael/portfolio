import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/certificates/certificate_images.dart';
import 'package:portfolio/certificates/certificate_list.dart';

class Certificates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.09,
        ),
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width * 0.05,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 50, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 25, 0),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.035),
          ),
        ),
        child: Column(
          children: const <Widget>[
            CertificatesImages(),
            CertificateList(),
          ],
        ));
  }
}
