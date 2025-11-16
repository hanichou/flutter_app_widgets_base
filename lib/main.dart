import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              // Étape 2
              Text('Hello World!'),
              Text('Deuxième texte'),

              // Étape 3 : Container stylisé
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Boîte stylisée avec Container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              // Texte ajouté pour l'étape 3
              Text("Texte ajouté pour l'étape 3"),

              SizedBox(height: 20),

              // ÉTAPE 4 : STACK
              Stack(
                alignment: Alignment.topRight, // modifié comme demandé
                children: [
                  // Carré de fond
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blueAccent,
                  ),

                  // Icône superposée
                  Icon(
                    Icons.star,
                    size: 100,
                    color: Colors.amber,
                  ),

                  // Texte superposé
                  Text(
                    "Superposé !",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}