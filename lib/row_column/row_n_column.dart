import 'package:flutter/material.dart';

class RowNColumn extends StatelessWidget {
  const RowNColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Text Atas', style: TextStyle(fontSize: 32)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 50, textColor: Colors.pink),
              FlutterLogo(size: 50, textColor: Colors.orange),
              FlutterLogo(size: 50, textColor: Colors.blue),
            ],
          ),
          Text('Text Bawah', style: TextStyle(fontSize: 32)),
        ],
      ),
    );
  }
}
