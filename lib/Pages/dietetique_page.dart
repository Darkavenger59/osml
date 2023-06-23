  import 'package:flutter/material.dart';

  class DietetiquePage extends StatelessWidget {
    final List<String> events = [
      'ShinBox',
      '\nSquat Profond avec rotation',
      '\nMobilité genou',
      '\nPont Fessier',
      '\nPompe diamant',
      '\nMobilité épaule',
      '\nPosture étirement Grand Dorsal',
      '\nPistol Squat',

      '\nWall CLimb',
      '\nGainage Tape Latéral',
      '\nMobilité cheville',
      '\nEtirement Quadriceps',
      '\nPistol Sit',
      '\nEtirement Fessier',
      '\nSaut départ genou',
      '\nSaut départ chaise',
      '\nSaut jambes tendues',
      '\nUp and Plank',
      '\nDéplacement crabe',
      '\nMarche de l\'Ours',
      '\nHip Up',
      '\nSpider Man',
      '\nStep Pistol Assis',
      '\nShinBox relevé d e Hanche',
      '\nPlanche avec tape sur les épaules',
      '\nUp and Plank',
      '\nEtirement chaine postérieure',
      '\nEnroulement en flexion',
      '\nSit Up',
      // Ajoutez les textes des événements ici
    ];

    final List<String> gif = [
    'assets/images/shinbox2.gif',
    'assets/images/squat_profond.gif',
    'assets/images/mob_genou.gif',
    'assets/images/pont.gif',
    'assets/images/pompe_diamant.gif',
    'assets/images/mob_epaule.gif',
    'assets/images/grand_dorsal.gif',
    'assets/images/pistol_squat.gif',
    'assets/images/wall_climb.gif',
    'assets/images/gainage_lat.gif',
    'assets/images/mob_cheville.gif',
    'assets/images/quadriceps.gif',
    'assets/images/pistol_sit.gif',
    'assets/images/fessier.gif',
    'assets/images/saut_genou.gif',
    'assets/images/saut_chaise.gif',
    'assets/images/saut_tendu.gif',
    'assets/images/up_plank.gif',
    'assets/images/crabe.gif',
    'assets/images/bear_walk.gif',
    'assets/images/hip_up.gif',
    'assets/images/spider_man.gif',

    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.purple.shade50, // Fond vert pour l'app bar
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[0],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[0],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[0]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[1],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[1],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 80, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[1]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[2],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[2],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[2]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[3],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[3],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[3]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[4],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[4],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[4]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[5],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[5],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[5]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[6],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[6],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[6]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[7],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[7],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[7]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[8],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[8],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[8]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[9],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[9],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[9]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[10],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[10],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[10]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[11],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[11],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[11]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[12],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[12],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[12]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[13],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[13],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[13]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[14],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[14],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[14]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[15],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[15],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[15]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[16],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[16],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[16]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[17],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[17],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[17]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[18],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[18],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[18]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[19],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[19],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[19]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[20],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[20],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[20]),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              gif[21],
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        events[21],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 85, // Ajustez le rayon selon votre préférence
                        backgroundImage: AssetImage(gif[21]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
