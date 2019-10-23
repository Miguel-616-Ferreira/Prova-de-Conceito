import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Vamos remover a status bar (barra de notificações)
    // * para não atrapalhar o utilizador
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              )
            ],
            title: const Text("Detalhes do Roteiro"),
          ),
          body: Center(
              child: ListView(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 50.0),
                  child: Text(
                    "Etapas",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, '/etapas'),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.edit),
                      Text("   Escrever a bibliografia do autor")
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, '/etapas'),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.slideshow),
                      Text("   Fazer os slides do trabalho")
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, '/etapas'),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.speaker_notes),
                      Text("   Preparar a apresentação")
                    ],
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
