import 'package:flutter/material.dart';

class TapButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  TapButton({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1.0),
          color: Color(0xFF8105D8),
        ),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
