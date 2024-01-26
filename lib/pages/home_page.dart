import 'package:flutter/material.dart';
import '../models/models.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navicury'),
        centerTitle: true,
        backgroundColor: Color(0xff0c181c),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 24),
            child: modetitle(title: 'Espacios'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                containermodel1(vocal: 'A'),
                containermodel1(vocal: 'B'),
                containermodel1(vocal: 'C'),
                containermodel1(vocal: 'D'),
                SizedBox(
                  height: 160,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 24),
            child: modetitle(
              title: 'Equipos cenectados',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        containermodel2(
                          title: 'Tv Cuarto',
                          icon: Icons.tv,
                          model: 'TP-KINT',
                          mac: '30:40:FC:30:PT:40',
                        ),
                        containermodel2(
                          title: 'Refrigerador',
                          icon: Icons.ac_unit_rounded,
                          model: 'TP-KINT',
                          mac: '30:40:FC:30:PT:40',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        containermodel2(
                          title: 'Puerta Sala',
                          icon: Icons.door_back_door,
                          model: 'TP-KINT',
                          mac: '30:40:FC:30:PT:40',
                        ),
                        containermodel2(
                          title: 'Cochera',
                          icon: Icons.car_crash,
                          model: 'TP-KINT',
                          mac: '30:40:FC:30:PT:40',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        containermodel2(
                          title: 'Equipo de Sonido',
                          icon: Icons.library_music_sharp,
                          model: 'TP-KINT',
                          mac: '30:40:FC:30:PT:40',
                        ),
                        containermodel2(
                          title: 'Microhonda',
                          icon: Icons.microwave,
                          model: 'TP-KINT',
                          mac: '30:40:FC:30:PT:40',
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
