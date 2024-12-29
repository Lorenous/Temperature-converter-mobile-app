import 'package:flutter/material.dart';

class TypeMenu extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? items;
  final Function(dynamic)? onChanged;
  final String? selectedItem;
  const TypeMenu({super.key, this.items, this.onChanged, this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Type',
          style: TextStyle(color: Colors.black.withAlpha(130)),
        ),
        DropdownButton(
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
          value: selectedItem,
          items: items,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
