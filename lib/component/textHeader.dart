import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  String textHeader;
  TextStyle styleHeader;

  TextHeader({super.key, required this.textHeader, required this.styleHeader}) {
    textHeader = textHeader;
    styleHeader = styleHeader;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$textHeader',
      style: styleHeader,
    );
  }
}
