import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardioPage extends StatefulWidget {
  @override
  _CardioPageState createState() => _CardioPageState();
}

class _CardioPageState extends State<CardioPage> {
  List<Item> itemList = [
    Item('Cardio Semaine 1 Training 2', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 20 min. allure modérée.\n \u{23F1} 5 min. Footing lent.', false),
    Item('Cardio Semaine 1 Training 5', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 8 fois :\n\u{23F1} 3 min. allure modérée.\n \u{23F1} 1 min. allure rapide.', false),
    Item('Cardio Semaine 2 Training 1', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 30 min. allure modérée.', false),
    Item('Cardio Semaine 2 Training 3', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 5 fois :\n\u{23F1} 5 min. allure modérée.\n\u{23F1} 1 min. Shadow.', false),
    Item('Cardio Semaine 3 Training 2', '\n\n \u{23F1} 5 min. Footing lent.\n\n\u{2022} Intervalle Allure Rapide / Marche :\n\u{23F1}    1 min. / 30 sec.\n\u{23F1}    2 min. / 30 sec.\n\u{23F1}    3 min. / 30 sec.\n\u{23F1}    4 min. / 30 sec.\n\u{23F1}    5 min. / 30 sec.\n\u{23F1}    4 min. / 30 sec.\n\u{23F1}    3 min. / 30 sec.\n\u{23F1}    2 min. / 30 sec.\n\u{23F1}    1 min. / 30 sec.\n', false),
    Item('Cardio Semaine 3 Training 5', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 20 fois :\n\u{23F1} 30 sec. sprint.\n \u{23F1} 30 sec. marche.', false),
    Item('Cardio Semaine 4 Training 1', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 40 min. allure modérée.\n \u{23F1} 5 min. Footing lent.', false),
    Item('Cardio Semaine 4 Training 4', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 5 fois :\n\u{23F1} 5 min. allure modérée.\n\u{23F1} 1 min. Shadow.\n \u{23F1} 30 sec. sprint.', false),
    Item('Cardio Semaine 4 Training 5', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 50 min. allure modérée.\n \u{23F1} 5 min. Footing lent.', false),
    Item('Cardio Semaine 5 Training 2', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 8 fois :\n\u{23F1} 3 min. allure modérée.\n \u{23F1} 1 min. allure rapide.', false),
    Item('Cardio Semaine 5 Training 5', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 5 fois :\n\u{23F1} 5 min. allure modérée.\n\u{23F1} 1 min. Shadow.\n \u{23F1} 30 sec. sprint.', false),
    Item('Cardio Semaine 6 Training 1', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 50 min. allure modérée.\n \u{23F1} 5 min. Footing lent.', false),
    Item('Cardio Semaine 6 Training 3', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 20 fois :\n\u{23F1} 30 sec. sprint.\n \u{23F1} 30 sec. marche.', false),
    Item('Cardio Semaine 7 Training 2', '\n\n \u{23F1} 5 min. Footing lent.\n\n\u{2022} Intervalle Allure Rapide / Marche :\n\u{23F1}    1 min. / 30 sec.\n\u{23F1}    2 min. / 30 sec.\n\u{23F1}    3 min. / 30 sec.\n\u{23F1}    4 min. / 30 sec.\n\u{23F1}    5 min. / 30 sec.\n\u{23F1}    4 min. / 30 sec.\n\u{23F1}    3 min. / 30 sec.\n\u{23F1}    2 min. / 30 sec.\n\u{23F1}    1 min. / 30 sec.\n', false),
    Item('Cardio Semaine 7 Training 5', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 5 fois :\n\u{23F1} 5 min. allure modérée.\n\u{23F1} 1 min. Shadow.\n \u{23F1} 30 sec. sprint.', false),
    Item('Cardio Semaine 8 Training 1', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 60 min. allure modérée.\n \u{23F1} 5 min. Footing lent.', false),
    Item('Cardio Semaine 8 Training 4', '\n\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 5 fois :\n\u{23F1} 1 min. sprint.\n\u{23F1} 3 min. Repos.', false),
    Item('Cardio Semaine 8 Training 5', '\n\n \u{23F1} 5 min. Footing lent.\n \u{23F1} 60 min. allure modérée.\n \u{23F1} 5 min. Footing lent.\n\n        \u{2022} A répéter 5 fois :\n\u{23F1} 30 sec. Shadow.\n\u{23F1} 30 sec. repos.', false),

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
      itemList = itemList.map((item) {
        item.isCompleted = prefs.getBool(item.text) ?? false;
        return item;
      }).toList();
    });
  }

  void saveCheckedItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var item in itemList) {
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
    int checkedCount = itemList.where((item) => item.isCompleted).length;
    String appBarTitle = '$checkedCount séance(s) cardio effectuée(s)';

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Container(
            color: item.isCompleted ? Colors.red.shade100 : Colors.red.shade50,
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
                          child: Text('Close'),
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