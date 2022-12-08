import 'package:flutter/material.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';

class ListDropDown extends StatelessWidget {

  final ValueChanged<String?> onChanged;
  final List<DropdownMenuItem<String>> items;
  Widget hint;

  ListDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    this.hint = const Text("Markets"),
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: DropdownButton<String>(
        isExpanded: true,
        hint: hint,
        items: items,
        onChanged: onChanged
      ),
    );
  }
}