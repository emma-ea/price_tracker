import 'package:flutter/material.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';

class ListDropDown extends StatelessWidget {

  final List<ActiveSymbol> items;
  final ValueChanged<String?> onChanged;
  String hint;

  ListDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    this.hint = "Markets"
  });

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      hint: Text(hint),
      items: items.map<DropdownMenuItem<String>>((ActiveSymbol item) {
        return DropdownMenuItem(
          value: item.symbol,
          child: Text(item.displayName!),
          onTap: () {
            hint = item.displayName!;
          },
        );
      }).toList(), 
      onChanged: onChanged
    );
  }
}