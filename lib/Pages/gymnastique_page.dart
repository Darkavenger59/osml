import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GymnastiquePage extends StatefulWidget {
  @override
  _GymnastiquePageState createState() => _GymnastiquePageState();
}

class _GymnastiquePageState extends State<GymnastiquePage> {
  List<Item> itemListGym = [
    Item('Gym Semaine 1 Training 3', '\n\n \u{2022}  50 ShinBox.\n \u{2022}  20 Squat Profond Rotation.\n\n \u{23F1} 3 X 1 min. mobilité flexion genou.\n \u{23F1} 5 min. apprentissage équilibre sur les mains', false),
    Item('Gym Semaine 2 Training 2', '\n\n \u{23F1}  5 min. Mobilité épaule au mur\n \u{23F1} 5 X 30 sec. Etirement Grand Dorsal\n \u{23F1} 5 x 1 min. Squat Profond.', false),
    Item('Gym Semaine 2 Training 5', '\n\n \u{2022}  50 ShinBox.\n \u{2022}  20 Squat Profond Rotation.\n\n \u{23F1} 3 X 1 min. mobilité flexion genou.\n \u{23F1} 3 X 1 min. mobilité flexion cheville.\n \u{23F1} 5 min. apprentissage équilibre sur les mains', false),
    Item('Gym Semaine 3 Training 2', '\n\n \u{23F1}  1 min. Etirement Quadriceps\n \u{23F1} 1 min. Etirement Fessiers\n \u{23F1} 1 min. Etirement Ischios\n \u{23F1} 1 min. Etirement Mollets\n', false),
    Item('Gym Semaine 3 Training 4', '\n\n \u{2022}  10 Marche de l\'Ours.\n \u{2022}  5 Hip Ups tenu 30 sec.\n \u{2022}  20 SpiderMan.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Gym Semaine 4 Training 2', '\n\n \u{2022}  10 Step Pistol Assis de chaque côtés.\n \u{2022} 20 ShinBox + relevé hanche.\n\n\n\u{1F501} Nombre de cycles : 2.', false),
    Item('Gym Semaine 5 Training 3', '\n\n \u{2022}  50 ShinBox.\n\ u{2022} 10 SpiderMan.\n \u{2022}  10 Step Pistol Assis de chaque côtés.\n\n \u{23F1} 5 X 20 sec. étirement chaîne postérieur.\n \u{23F1} 5 X 20 sec. enroulement flexion.\n\n\n\u{1F501} Nombre de cycles : 2.', false),
    Item('Gym Semaine 6 Training 2', '\n\n \u{23F1}  5 min. Mobilité épaule au mur.\n \u{23F1} 5 X 30 sec. Etirement Grand Dorsal\n \u{23F1} 5 x 1 min. Squat Profond.', false),
    Item('Gym Semaine 6 Training 5', '\n\n \u{2022}  50 ShinBox.\n\ u{2022} 10 SpiderMan.\n \u{2022}  10 Step Pistol Assis de chaque côtés.\n\n \u{23F1} 5 X 20 sec. étirement chaîne postérieur.\n \u{23F1} 5 X 20 sec. enroulement flexion.\n\n\n\u{1F501} Nombre de cycles : 2.\n\n\n \u{23F1} 5 min. apprentissage équilibre sur les mains', false),
    Item('Gym Semaine 7 Training 2', '\n\n \u{23F1}  1 min. Etirement Quadriceps\n \u{23F1} 1 min. Etirement Fessiers\n \u{23F1} 1 min. Etirement Ischios\n \u{23F1} 1 min. Etirement Mollets\n', false),
    Item('Gym Semaine 7 Training 4', '\n\n \u{2022}  10 Marche de l\'Ours.\n \u{2022}  5 Hip Ups tenu 30 sec.\n \u{2022}  20 SpiderMan.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Gym Semaine 8 Training 2', '\n\n \u{23F1}  5 min. Mobilité épaule au mur\n \u{23F1} 5 X 30 sec. Etirement Grand Dorsal\n \u{23F1} 5 x 1 min. Squat Profond.', false),

    // Ajoutez d'autres éléments avec leurs textes correspondants ici
  ];

  @override
  void initState() {
    super.initState();
    loadCheckedItems();
  }

  void loadCheckedItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      itemListGym = itemListGym.map((item) {
        item.isCompleted = prefs.getBool(item.text) ?? false;
        return item;
      }).toList();
    });
  }

  void saveCheckedItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var item in itemListGym) {
      await prefs.setBool(item.text, item.isCompleted);
    }
  }

  @override
  void dispose() {
    saveCheckedItems();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int checkedCount = itemListGym.where((item) => item.isCompleted).length;
    String appBarTitle = '$checkedCount séance(s) de gymnastique effectuée(s)';

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.grey, // Fond vert pour l'app bar
      ),
      body: ListView.builder(
        itemCount: itemListGym.length,
        itemBuilder: (context, index) {
          final item = itemListGym[index];
          return Container(
            color: item.isCompleted ? Colors.blue.shade100 : Colors.blue.shade50, // Fond vert pour les éléments complétés
            child: ListTile(
              title: Text(
                item.text,
                style: TextStyle(
                  fontStyle: item.isCompleted ? FontStyle.italic : FontStyle.normal,
                ),
              ),
              trailing: item.isCompleted ? Icon(Icons.check) : null,
              onLongPress: () {
                setState(() {
                  item.isCompleted = !item.isCompleted;
                });
                saveCheckedItems();
              },
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Détails de la séance'),
                      content: Text(item.details),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fermer'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String text;
  final String details;
  bool isCompleted;

  Item(this.text, this.details, this.isCompleted);
}
