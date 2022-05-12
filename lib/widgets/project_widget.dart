import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skill_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  String name, description, logo, link;
  List<String> images, techs;

  Project({
    required this.logo,
    required this.name,
    required this.link,
    required this.description,
    required this.images,
    required this.techs,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: link != "" ? () => launch(link) : null,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.82,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 50, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 25, 0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.035),
          ),
        ),
        //
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
        //
        child: Column(
          children: <Widget>[
            // Apresentação
            Row(
              children: <Widget>[
                // Logo
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  height: MediaQuery.of(context).size.width * 0.16,
                  width: MediaQuery.of(context).size.width * 0.16,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        logo,
                        fit: BoxFit.cover,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),

                // Detalhes
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Título
                    Container(
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * 0.02,
                      ),
                      width: MediaQuery.of(context).size.width * 0.51,
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize:
                                MediaQuery.of(context).size.aspectRatio >= 0.85
                                    ? MediaQuery.of(context).size.width * 0.025
                                    : MediaQuery.of(context).size.width * 0.029),
                      ),
                    ),

                    // Descrição
                    Container(
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * 0.02,
                      ),
                      width: MediaQuery.of(context).size.width * 0.51,
                      child: Text(
                        description,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize:
                                MediaQuery.of(context).size.aspectRatio >= 0.85
                                    ? MediaQuery.of(context).size.width * 0.015
                                    : MediaQuery.of(context).size.width * 0.022),
                      ),
                    ),

                    // Tecnologias
                    Row(
                        children: techs.map((skill) {
                      return SkillIcon(
                        path: skill,
                        lowSize: true,
                      );
                    }).toList()),
                  ],
                )
              ],
            ),

            // Espaço entre informações e fotos
            SizedBox(height: MediaQuery.of(context).size.width * 0.055),

            // Fotos do projeto
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: images.map((url) {
                    return Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.025),
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.01,
                        ),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
