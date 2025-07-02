import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 34, 19, 102),
            Color.fromARGB(255, 125, 173, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterLogo(size: 50, textColor: Colors.lime),
              FlutterLogo(size: 50, textColor: Colors.lime),
              FlutterLogo(size: 50, textColor: Colors.lime),
            ],
          ),
          FlutterLogo(size: 50, textColor: Colors.lightBlue),
          FlutterLogo(size: 50, textColor: Colors.lightBlue),
          FlutterLogo(size: 50, textColor: Colors.lightBlue),
        ],
      ),
    );
  }
}
