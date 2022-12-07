import 'package:flutter/material.dart';

class ListDropDown extends StatelessWidget {

  final List<String> items;
  final ValueChanged<String?> onChanged;

  const ListDropDown({
    super.key,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      items: items.map<DropdownMenuItem<String>>((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(), 
      onChanged: onChanged
    );
  }
}