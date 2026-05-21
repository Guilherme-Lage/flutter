import 'package:flutter/material.dart';
import 'pages/tela_home.dart';

void main() {
  runApp(const MeuAppDeIcones());
}

class MeuAppDeIcones extends StatelessWidget {
  const MeuAppDeIcones({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App de Ícones',
      debugShowCheckedModeBanner: false,
  
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const TelaHome(),
    );
  }
}
