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
          child: SingleChildScrollView(   // évite les débordements si l'écran est petit
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

                // Étape 4 : Stack
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 100,
                      color: Colors.amber,
                    ),
                    Text(
                      "Superposé !",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Étape 5 : Row avec icônes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: Colors.blue, size: 40),
                    Icon(Icons.star, color: Colors.amber, size: 40),
                    Icon(Icons.settings, color: Colors.grey, size: 40),
                    Icon(Icons.phone, color: Colors.green, size: 40),
                  ],
                ),

                SizedBox(height: 30),

                // ÉTAPE 6 : Deuxième Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Titre principal', style: TextStyle(fontSize: 26)),
                    SizedBox(height: 20),
                    Text('Sous-titre ou description', style: TextStyle(fontSize: 18)),
                    Icon(Icons.thumb_up, color: Colors.green, size: 40),
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