import 'package:flutter/material.dart';

// ignore: must_be_immutable
class device extends StatefulWidget {
  String equipoConectado;
  String model;
  String mac;

  device(
      {required this.equipoConectado, required this.model, required this.mac});

  @override
  State<device> createState() => _deviceState();
}

class _deviceState extends State<device> {
  double sliderLuz1 = 0;

  double sliderLuz2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navicury'),
        centerTitle: true,
        backgroundColor: Color(0xff0c181c),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fabricante:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Modelo:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Mac:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.equipoConectado,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      widget.model,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      widget.mac,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Encender',
                  style: TextStyle(
                    color: Color(0xff0c181c),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff0c181c),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Ajustar',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Luz'),
            SizedBox(
              height: 16,
            ),
            Slider(
              value: sliderLuz1,
              onChanged: (luz1) {
                sliderLuz1 = luz1;
                setState(() {});
              },
              min: 0,
              max: 100,
              activeColor: Color(0xff0c181c),
              divisions: 100,
              label: sliderLuz1.toStringAsFixed(0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0'),
                Text(sliderLuz1.toStringAsFixed(0)),
                Text('100'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text('Luz'),
            SizedBox(
              height: 16,
            ),
            Slider(
              value: sliderLuz2,
              onChanged: (luz2) {
                sliderLuz2 = luz2;
                setState(() {});
              },
              min: 0,
              max: 100,
              activeColor: Color(0xff0c181c),
              divisions: 100,
              label: sliderLuz2.toStringAsFixed(0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0'),
                Text(sliderLuz2.toStringAsFixed(0)),
                Text('100'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
