import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  String? text;
  TextStyle? textStyle;
   TextWidget({super.key,this.text,this.textStyle,  String? title,  int ?color,  int ?fontSize,  FontWeight ?fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text" ,style: textStyle,
    );
  }
}
