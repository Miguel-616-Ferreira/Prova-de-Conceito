import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key key}) : super(key: key);

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
          title: const Text("Roteiros a fazer"),
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: FlatButton(
                // ? A route details é aquela que leva ao ProjectDetailsScreen
                onPressed: () => Navigator.pushNamed(context, '/details'),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[Icon(Icons.book), Text("  Roteiro 1")],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: FlatButton(
                onPressed: () => Navigator.pushNamed(context, '/details'),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[Icon(Icons.book), Text("  Roteiro 2")],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: FlatButton(
                onPressed: () => Navigator.pushNamed(context, '/details'),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[Icon(Icons.book), Text("  Roteiro 3")],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: FlatButton(
                onPressed: () => Navigator.pushNamed(context, '/details'),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[Icon(Icons.book), Text("  Roteiro 4")],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
