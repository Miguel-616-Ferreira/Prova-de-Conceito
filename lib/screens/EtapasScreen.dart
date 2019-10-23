import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EtapasScreen extends StatelessWidget {
  const EtapasScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Vamos remover a status bar (barra de notificações)
    // * para não atrapalhar o utilizador
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    // ? Vamos defenir um limite para o texto
    double textWidth = MediaQuery.of(context).size.width * 0.8;

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
          title: const Text("Etapas do roteiro"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "{ Nome da etapa }",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Descrição: ",
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    Flexible(
                      child: Text(
                        "Nesta etapa tens de comentar a seguinte frase: 'A million dollars isn't cool. You know what's cool? A billion dollars.'",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20, 20.0, 0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Ajudas: ",
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    Container(
                      child: Flexible(
                        child: Text(
                          "Não te esqueças de organizar bem a informação",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(20),
          height: 50,
          child: RaisedButton(
            onPressed: () => {},
            child: Text("Responder"),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
