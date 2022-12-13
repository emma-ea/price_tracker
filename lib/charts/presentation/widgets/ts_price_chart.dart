import 'package:flutter/material.dart';
import 'package:price_tracker/charts/data/model/ts_price_ticker.dart';

class PriceChart extends StatefulWidget {
  final List<PriceTicker> priceTicker;
  
  const PriceChart({super.key, required this.priceTicker});

  @override
  State<PriceChart> createState() => _PriceChartState();
}

class _PriceChartState extends State<PriceChart> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}