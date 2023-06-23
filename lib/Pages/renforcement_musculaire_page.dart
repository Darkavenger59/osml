import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RenforcementMusculairePage extends StatefulWidget {
  @override
  _RenforcementMusculairePageState createState() =>
      _RenforcementMusculairePageState();
}

class _RenforcementMusculairePageState extends State<RenforcementMusculairePage> {
  List<Item> itemListRenfo = [
    Item('Renfo Semaine 1 Training 1', '\n\n \u{2022}  50 Squats.\n \u{2022}  20 Pompes.\n \u{2022}  25 Fentes de chaque jambe.\n \u{2022}  150 Crunchs.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 1 Training 4', '\n\n \u{2022}  30 Jumping Jack.\n \u{2022}  50 Ponts Fessier.\n \u{2022}  20 Burpees.\n \u{2022}  150 Crunchs.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 2 Training 2', '\n\n \u{2022}  50 Squats sumo.\n \u{2022}  20 Pompes dimant.\n \u{2022}  10 Sauts groupés.\n \u{2022}  5 Sauts le + haut.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 2 Training 4', '\n\n \u{2022}  2 Pistol Squat. \n \u{2022} 3 Wall Climb. \n \u{2022} 5 Burpees. \n\n \u{23F1} Max rep. en 15 min. \n\n\n  \u{2022} 50 Squats.\n \u{2022}  100 Crunchs.\n \u{2022}  50 Oblique de chaque côtés.\n \u{2022}  10 Sit Up.\n \u{2022} 10 Gainage Tape latéral\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 3 Training 1', '\n\n \u{2022}  10 Squats.\n \u{2022}  5 Burpees.\n \u{2022}  10 Crunchs.\n \u{2022}  5 Pompes.\n\n\n\u{23F1} Toutes les 1 min. pendant 10 min. \n\n\n\u{2022}  50 Shadows amorti droit.\n \u{2022}  50 Shadows amorti revers.\n \u{2022}  50 Shadows fond droit.\n \u{2022}  50 Shadows fond revers.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 3 Training 3', '\n\n \u{2022}  10 Sauts départ genoux. \n\u{2022} 20 Sauts départ chaise. \n\u{2022} 30 Sauts groupés. \n\u{2022} 20 Sauts le + haut.\n\u{2022} 10 Sauts jambes tendues. \n\u{2022} 10 Sauts Squat profond.\n\n\u{1F501} Nombre de cycles : 2.', false),
    Item('Renfo Semaine 3 Training 4', '\n\n \u{2022}  50 Montée de genoux.\n \u{2022}  10 Squat crabe de chaque côtés.\n \u{2022}  20 Fentes de chaque côtés.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 4 Training 2', '\n\n \u{2022}  25 Shadows latéral.\n \u{2022}  10 Burpees.\n \u{2022}  10 Pompes.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 4 Training 3', '\n\n \u{2022}  10 Plank Shoulder Tap.\n \u{2022}  10 Up and Plank.\n \u{2022}  25 Crunchs.\n \u{2022}  5 Sauts le + haut.\n\n\n\u{1F501} Nombre de cycles : 5.', false),
    Item('Renfo Semaine 5 Training 1', '\n\n \u{2022}  10 Squats.\n \u{2022}  5 Burpees.\n \u{2022}  10 Crunchs.\n \u{2022}  5 Pompes.\n\n\n\u{23F1} Toutes les 1 min. pendant 10 min. \n\n\n\u{2022}  50 Shadows amorti droit.\n \u{2022}  50 Shadows amorti revers.\n \u{2022}  50 Shadows fond droit.\n \u{2022}  50 Shadows fond revers.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 5 Training 4', '\n\n \u{2022}  2 Pistol Squat. \n \u{2022} 3 Wall Climb. \n \u{2022} 5 Burpees. \n\n \u{23F1} Max rep. en 15 min. \n\n\n  \u{2022} 50 Squats.\n \u{2022}  100 Crunchs.\n \u{2022}  50 Oblique de chaque côtés.\n \u{2022}  10 Sit Up.\n \u{2022} 10 Gainage Tape latéral\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 6 Training 2', '\n\n \u{2022}  50 Squats sumo.\n \u{2022}  20 Pompes dimant.\n \u{2022}  10 Sauts groupés.\n \u{2022}  5 Sauts le + haut.\n\n\n\u{1F501} Nombre de cycles : 3.', false),
    Item('Renfo Semaine 6 Training 4', '\n\n \u{2022}  10 Sauts départ genoux. \n\u{2022} 20 Sauts départ chaise. \n\u{2022} 30 Sauts groupés. \n\u{2022} 20 Sauts le + haut.\n\u{2022} 10 Sauts jambes tendues. \n\u{2022} 10 Sauts Squat profond.\n\n\u{1F501} Nombre de cycles : 2.', false),
    Item('Renfo Semaine 7 Training 1', '\n\n \u{2022}  50 Shadows amorti droit.\n \u{2022}  50 Shadows amorti revers.\n \u{2022}  50 Shadows fond droit.\n \u{2022}  50 Shadows fond revers.\n\n\n\u{1F501} Nombre de cycles : 5.', false),
    Item('Renfo Semaine 7 Training 3', '\n\n \u{2022}  50 Squats.\n \u{2022}  20 Pompes.\n \u{2022}  25 Fentes de chaque jambe.\n \u{2022}  150 Crunchs.\n\n\n\u{1F501} Nombre de cycles : 5.', false),
    Item('Renfo Semaine 7 Training 4', '\n\n \u{2022}  50 Montée de genoux.\n \u{2022}  20 Squat crabe de chaque côtés.\n \u{2022}  10 Fentes de chaque côtés.\n\n\n\u{1F501} Nombre de cycles : 5.', false),
    Item('Renfo Semaine 8 Training 2', '\n\n \u{2022}  50 Squats sumo.\n \u{2022}  20 Pompes dimant.\n \u{2022}  10 Sauts groupés.\n \u{2022}  5 Sauts le + haut.\n\n\n\u{1F501} Nombre de cycles : 5.', false),
    Item('Renfo Semaine 8 Training 3', '\n\n \u{2022}  2 Pistol Squat. \n \u{2022} 3 Wall Climb. \n \u{2022} 5 Burpees. \n\n \u{23F1} Max rep. en 15 min. \n\n\n  \u{2022} 50 Squats.\n \u{2022}  100 Crunchs.\n \u{2022}  50 Oblique de chaque côtés.\n \u{2022}  10 Sit Up.\n \u{2022} 10 Gainage Tape latéral\n\n\u{1F501} Nombre de cycles : 3.', false),

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
      itemListRenfo = itemListRenfo.map((item) {
        item.isCompleted = prefs.getBool(item.text) ?? false;
        return item;
      }).toList();
    });
  }

  void saveCheckedItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var item in itemListRenfo) {
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
    int checkedCount = itemListRenfo.where((item) => item.isCompleted).length;
    String appBarTitle = '$checkedCount séance(s) de renforcement musculaire effectuée(s)';

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.grey, // Fond rouge pour l'app bar
      ),
      body: ListView.builder(
        itemCount: itemListRenfo.length,
        itemBuilder: (context, index) {
          final item = itemListRenfo[index];
          return Container(
            color: item.isCompleted ? Colors.orange.shade100 : Colors.orange.shade50, // Fond rouge pour les éléments complétés
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
