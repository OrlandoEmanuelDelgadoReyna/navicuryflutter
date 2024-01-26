import 'package:flutter/material.dart';
import '../pages/device_page.dart';

// ignore: must_be_immutable
class modetitle extends StatelessWidget {
  String title;
  modetitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Color(0xff0c181c), fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

// ignore: must_be_immutable
class containermodel1 extends StatelessWidget {
  String vocal;
  containermodel1({required this.vocal});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        vocal,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff0c181c),
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(offset: Offset(0, 5), blurRadius: 5),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class containermodel2 extends StatelessWidget {
  String title, model, mac;
  IconData icon;
  containermodel2(
      {required this.title,
      required this.icon,
      required this.model,
      required this.mac});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                device(equipoConectado: title, model: model, mac: mac),
          ),
        );
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff0c181c),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 170,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1), blurRadius: 2, color: Colors.blueGrey),
            BoxShadow(
                offset: Offset(0, -1), blurRadius: 2, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
