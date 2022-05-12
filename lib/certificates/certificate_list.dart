import 'package:flutter/material.dart';
import 'package:portfolio/dados.dart';

class CertificateList extends StatelessWidget {
  const CertificateList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Dados.nameCertificados.map((nome) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              nome,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize:
                MediaQuery.of(context).size.aspectRatio >= 0.85
                    ? MediaQuery.of(context).size.width * 0.017
                    : MediaQuery.of(context).size.width * 0.020,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
