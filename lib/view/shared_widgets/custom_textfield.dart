import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.icon,
      required this.hintText,
      this.isPassword,
      this.inputAction}) {
    isPassword = isPassword == null ? false : isPassword;
    inputAction = inputAction == null ? TextInputAction.done : inputAction;
  }
  bool? isPassword;
  TextInputAction? inputAction;
  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
      child: TextFormField(
        style: TextStyle(
            fontSize: MediaQuery.of(context).textScaleFactor * 17,
            color: Colors.blue.shade600),
        textInputAction: inputAction,
        obscureText: isPassword!,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30), gapPadding: 59),
        ),
      ),
    );
  }
}
