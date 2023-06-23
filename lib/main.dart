import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/Pages/cardio_page.dart';
import 'package:test_app/Pages/dietetique_page.dart';
import 'package:test_app/Pages/gymnastique_page.dart';
import 'package:test_app/Pages/home_page.dart';
import 'package:test_app/Pages/renforcement_musculaire_page.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Color> pageColors = [
    Colors.green, // Couleur de la page d'accueil
    Colors.blue, // Couleur de la page de gymnastique
    Colors.orange, // Couleur de la page de renforcement musculaire
    Colors.red, // Couleur de la page de cardio
    Colors.purple, // Couleur de la page de diététique
  ];

  final List<Color> pageColorsContainer = [
    Colors.green.shade100, // Couleur de la page d'accueil
    Colors.blue.shade100, // Couleur de la page de gymnastique
    Colors.orange.shade100, // Couleur de la page de renforcement musculaire
    Colors.red.shade100, // Couleur de la page de cardio
    Colors.purple.shade100, // Couleur de la page de diététique
  ];

  final List<Widget> _pages = [
    HomePage(),
    GymnastiquePage(),
    RenforcementMusculairePage(),
    CardioPage(),
    DietetiquePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prépa physique Summer 2023'),
        backgroundColor: pageColors[_currentIndex],
      ),
      body: Container(
        color: pageColorsContainer[_currentIndex],
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics),
            label: 'Gymnastique',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Renforcement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: 'Cardio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Aide',
          ),
        ],
        backgroundColor: pageColors[_currentIndex],
        selectedItemColor: Colors.white,
      ),
    );
  }
}
