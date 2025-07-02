import 'package:flutter/material.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: 20, textColor: Colors.red),
          Padding(padding: EdgeInsets.all(10)),
          FlutterLogo(size: 20, textColor: Colors.blue),
          Padding(padding: EdgeInsets.all(10)),
          FlutterLogo(size: 20, textColor: Colors.green),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
