import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 85, // Ajustez le rayon selon votre préférence
                backgroundImage: AssetImage("assets/images/test_deux.png"),
              ),
              Text(
                'Présentation de l\'application \n      Préparation Physique\n \n',
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16), // Ajoutez la valeur de la marge souhaitée ici
                child: Text('Toute la prépa physique se trouve sur cette application ! \u{1F4AA}\n\n'
                    'Si des mouvements vous parraissent imcompréhensible, vous pouvez les trouver dans l\'onglet "Aide".\n Si vous voyez mal, cliquez sur la vidéo elle s\'aggrandira ! \u{1F609}\n\n'
                    'Voici les deux principales fonctions pour naviguer dans l\'application (clic & clic long) :\n\n',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/screen_simple.png'),
                      Text(
                        '               \u{279D}\n'
                        'Un clic pour obtenir le\ncontenu de la séance',
                        style: TextStyle(fontSize: 12),
                      ),
                      Image.asset('assets/images/screen_one_clic.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Espace vertical entre les deux lignes d'images
              Center(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/screen_simple.png'),
                      Text(
                        '               \u{279D}\n'
                            'Un clic LONG afin de \nvalider la séance',
                        style: TextStyle(fontSize: 12),
                      ),
                      Image.asset('assets/images/screen_long_clic.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
