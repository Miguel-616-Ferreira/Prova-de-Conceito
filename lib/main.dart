import 'package:conceito_bizview/screens/EtapasScreen.dart';
import 'package:conceito_bizview/screens/ProjectDetailsScreen.dart';
import 'package:conceito_bizview/screens/ProjectsScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // ? Screen onde mostra os roteiros
        '/': (context) => ProjectsScreen(),
        // ? Screen onde mostra os detalhes de um roteiro
        '/details': (context) => ProjectDetailsScreen(),
        // ? Screen onde mostra os detalhes de uma etapa
        '/etapas': (context) => EtapasScreen()
      },
    );
  }
}
