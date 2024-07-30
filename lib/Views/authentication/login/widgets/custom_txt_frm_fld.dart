import 'package:flutter/material.dart';

class CustomTxtFrmFld extends StatelessWidget {
  final String labelText;
  final String hintText;
  const CustomTxtFrmFld({
    super.key, required this.labelText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
