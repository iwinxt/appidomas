import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trilha de Aprendizado de Idiomas'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          elevation: 0,
        ),
        body: Center(
          child: TrilhaAprendizado(),
        ),
      ),
    );
  }
}

class TrilhaAprendizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 236, 238, 240)!, const Color.fromARGB(255, 241, 242, 243)!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Nivel(id: 'A1', icone: Icons.access_alarm, conteudo: ['Saudações', 'Frases básicas', 'Vocabulário simples']),
          Linha(),
          Nivel(id: 'A2', icone: Icons.airplanemode_active, conteudo: ['Frases de viagem', 'Pedidos simples', 'Conversação básica']),
          Linha(),
          Nivel(id: 'B1', icone: Icons.book, conteudo: ['Conversação intermediária', 'Leitura de textos simples', 'Entender filmes e músicas']),
        ],
      ),
    );
  }
}

class Nivel extends StatelessWidget {
  final String id;
  final IconData icone;
  final List<String> conteudo;

  Nivel({required this.id, required this.icone, required this.conteudo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              icone,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Nível $id',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: conteudo.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              item,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
          )).toList(),
        ),
      ],
    );
  }
}

class Linha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(2, 2),
          ),
        ],
      ),
    );
  }
}
