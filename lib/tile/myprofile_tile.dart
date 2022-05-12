// Minhas informações (responsivas)

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/image_link.dart';
import 'package:portfolio/widgets/menu_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Altura e largura baseado nas proporções da tela
      //height: MediaQuery.of(context).size.width * 0.25,
      width: MediaQuery.of(context).size.width,

      // Cor e bordas curvadas
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Color.fromARGB(255, 0, 30, 0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(70.0),
          bottomLeft: Radius.circular(70.0),
        ),
      ),

      //
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Meus links
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Redes sociais
                  Row(
                    children: <Widget>[
                      ImageLink(
                        image: "images/sites/instagram.jpeg",
                        link: "https://www.instagram.com/Pablo.Rapier/",
                      ),
                      ImageLink(
                        image: "images/sites/facebook.jpg",
                        link: "https://www.facebook.com/pablo.raphael.50/",
                      ),
                      ImageLink(
                        image: "images/sites/github.png",
                        link: "https://github.com/pablo-raphael",
                      ),
                      ImageLink(
                        image: "images/sites/linkedin.png",
                        link: "https://www.linkedin.com/in/bennahill/",
                      ),
                    ],
                  ),

                  // Contato e currículo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      PopupMenuButton(
                        child: Text(
                          'Contato',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                        color: Colors.transparent,
                        //icon: Icon(Icons.keyboard_arrow_down),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            padding: EdgeInsets.zero,
                            child: MyMenuItem(
                                "pabloraphael358@gmail.com",
                                "mailto:pabloraphael358@gmail.com",
                                Icons.email),
                          ),
                          PopupMenuItem(
                            padding: EdgeInsets.zero,
                            child: MyMenuItem(
                              '(75) 98282-4719',
                              "tel: 075982824719",
                              Icons.phone,
                            ),
                          ),
                          PopupMenuItem(
                            padding: EdgeInsets.zero,
                            child: MyMenuItem(
                              'WhatsApp',
                              'https://api.whatsapp.com/send?phone=5575982824719',
                              Icons.smartphone,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      TextButton(
                        onPressed: () {
                          launch("https://firebasestorage.googleapis.com/v0/b/lojinha-14417.appspot.com/o/curr%C3%ADculo_clic%C3%A1vel.pdf?alt=media&token=a0c84f62-e365-42cd-a2f2-be13964bdb0e");
                        },
                        child: Text(
                          "Currículo",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Minhas informações
            Padding(
              padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.025,
            ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Foto
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.175, //height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.2,
                      /*padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.025
                      ),*/
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            "images/my-photo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Olá
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 15.0,//MediaQuery.of(context).size.height * 0.05,
                          ),
                          child: Text(
                            "Olá,",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.w100,
                              color: const Color.fromARGB(255, 57, 255, 20),
                            ),
                          ),
                        ),

                        // Minha apresentação
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            "Me chamo Pablo Raphael, sou desenvolvedor. "
                                "Minha especialidade é voltada para a área Mobile (Android e IOS) "
                                "Adiquiri diversos conhecimentos e experiências em meio acadêmico"
                                " e através de vários projetos pessoais e profissionais.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.aspectRatio >= 0.85 ?
                                MediaQuery.of(context).size.width * 0.014 :
                                MediaQuery.of(context).size.width * 0.02
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
