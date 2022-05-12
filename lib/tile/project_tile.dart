import 'package:flutter/material.dart';
import 'package:portfolio/dados.dart';
import 'package:portfolio/widgets/project_widget.dart';

class ProjectTile extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  int numProjects = Dados.projects.length;
  int atual = 0;
  double mover = 0;
  double sizeScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.grey,
              size: MediaQuery.of(context).size.width * 0.05,
            ),
            onTap: () {
              // Se a tela atual não for a primeira
              if (atual > 0) {
                mover -= MediaQuery.of(context).size.width * 0.82;
                atual -= 1;
              }

              _controller.animateTo(
                  mover,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn);
            },
          ),

          SizedBox(
              width: MediaQuery.of(context).size.width * 0.82,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: Dados.projects.map((project) {
                      return Project(
                          logo: project["logo"],
                          link: project["link"],
                          name: project["name"],
                          description: project["description"],
                          images: project["images"],
                          techs: project['techs']
                      );
                    }).toList()
                ),
              ),
            ),

          InkWell(
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
              size: MediaQuery.of(context).size.width * 0.05,
            ),
            onTap: () {
              // Se a tela atual não for a última
              if (atual < numProjects-1) {
                mover += MediaQuery.of(context).size.width * 0.82;
                atual += 1;
              }
              // Se for volta para a primeira página
              else {
                mover = 0;
                atual = 0;
              }

              _controller.animateTo(
                  mover,
                  duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn);
            },
          ),
        ],
      ),
    );
  }
}
