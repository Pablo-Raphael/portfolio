import 'package:flutter/material.dart';
import 'package:portfolio/dados.dart';
import 'package:portfolio/widgets/skill_icon.dart';

class MySkills extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  double _mover = 0;
  int mov = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: Row(
        children: <Widget>[
          // Botão de arrastar para a esquerda
          InkWell(
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.grey,
              size: MediaQuery.of(context).size.width * 0.05,
            ),
            onTap: () {
              if (_mover - mov >= 0) {
                _mover -= mov;
              } else {
                _mover = 0;
              }

              _controller.animateTo(
                _mover,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              );
            },
          ),

          // Scrollable de Skills
          Expanded(
            child: SingleChildScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: Dados.skills.map((skill) {
                return SkillIcon(path: skill);
              }).toList()),
            ),
          ),

          // Botão de arrastar para a direita
          InkWell(
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
              size: MediaQuery.of(context).size.width * 0.05,
            ),
            onTap: () {
              String a = _controller.position.toString();
              a = a.substring(a.indexOf('..') + 2);
              double num = double.parse(a.substring(0, a.indexOf(",")));

              if (_mover.floor() + mov <= num.floor()) {
                _mover += mov;
              } else {
                _mover = num;
              }

              _controller.animateTo(
                _mover,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              );
            },
          ),
        ],
      ),
    );
  }
}
