import 'package:flutter/material.dart';
import 'package:portfolio/certificates/certificates.dart';
import 'package:portfolio/tile/my_skills.dart';
import 'package:portfolio/tile/myprofile_tile.dart';
import 'package:portfolio/tile/project_tile.dart';
import 'package:portfolio/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 50),
          //height: MediaQuery.of(context).size.width * 2.5,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 50, 0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MyProfile(),
              TitleText("Minhas Skills"),
              MySkills(),
              TitleText("Certificações"),
              Certificates(),
              TitleText("Projetos", subtext: "Clique no card para abrir"),
              ProjectTile()
            ],
          ),
        ),
      ),
    );
  }
}
