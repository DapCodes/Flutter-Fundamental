import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 50,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.purple,
          ),
          FlutterLogo(
            size: 50,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.orange,
          ),
          FlutterLogo(
            size: 50,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
