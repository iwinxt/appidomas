import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> trilhas = [
    {
      'nivel': 'A1',
      'conteudos': ['Saudações', 'Números', 'Cores'],
    },
    {
      'nivel': 'A2',
      'conteudos': ['Frases simples', 'Vocabulário básico', 'Diálogos simples'],
    },
    {
      'nivel': 'A3',
      'conteudos': ['Conversação básica', 'Gramática simples', 'Vocabulário expandido'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trilha de Aprendizagem'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: trilhas.map((trilha) {
          return Padding(
            padding: const EdgeInsets.all(8.0), 
            child: Card(
              elevation: 4, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), 
              ),
              child: Padding(
                padding: const EdgeInsets.all(16), 
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10), 
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nível: ${trilha['nivel']}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Conteúdos: ${trilha['conteudos'].join(', ')}',
                            style: TextStyle(
                              fontSize: 15,
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
