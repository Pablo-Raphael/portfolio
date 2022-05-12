import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/dados.dart';

class CertificatesImages extends StatelessWidget {
  const CertificatesImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.width * 0.28,
      child: Carousel(
        images: Dados.certificados
            .map((url) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              child: Image.asset(
                url[0],
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              child: Image.asset(
                url[1],
                fit: BoxFit.cover,
              ),
            ),
          ],
        ))
            .toList(),
        dotSize: MediaQuery.of(context).size.width * 0.0075,
        dotSpacing: MediaQuery.of(context).size.width * 0.025,
        indicatorBgPadding: MediaQuery.of(context).size.width * 0.015,
        dotBgColor: Colors.transparent,
        dotColor: Colors.white,
        dotIncreasedColor: Colors.green,
        autoplay: true,
        // Tempo para pular cada imagem
        autoplayDuration: const Duration(seconds: 10),
      ),
    );
  }
}
