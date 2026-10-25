import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de Películas'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.black87,
                      child: const Center(
                        child: Text(
                          'Póster de Inception',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(Icons.favorite, color: Colors.red, size: 30),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Inception',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('📅 2010'),
                    Text('🎬 Sci-Fi'),
                    Text('⭐ 4.8'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
