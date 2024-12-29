import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String labelText;
  final Function(String)? onChanged;
  const CustomTextFeild(
      {super.key, required this.labelText, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.black.withAlpha(130)),
        ),
        TextField(
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          cursorColor: Colors.black.withAlpha(178),
          cursorWidth: 1,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
