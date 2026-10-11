import 'package:flutter/material.dart';

// función principal que arranca la aplicación
void main() {
  runApp(const MyApp());
}

//  estructura base de tu app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // "lienzo en blanco" de tu pantalla
      home: Scaffold(
        //  AppBar es la barra superior donde va el título
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
          backgroundColor: Colors.blue,
        ),
        //  cuerpo (body) de la pantalla
        body: const Center(
          child: Text('Hello World', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
