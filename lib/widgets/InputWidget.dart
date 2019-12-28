import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelTitle;
  final IconData trailingIcon;
  final bool showText;
  final Function trailingIconTap;

  InputField(
      {@required this.labelTitle,
      @required this.trailingIcon,
      this.showText,
      this.trailingIconTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: showText == true ? true : false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
        labelText: labelTitle,
        suffixIcon:
            IconButton(onPressed: trailingIconTap, icon: Icon(trailingIcon)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(width: 0.5)),
      ),
    );
  }
}
