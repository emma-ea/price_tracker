import 'package:flutter/material.dart';
import 'package:price_tracker/charts/data/model/ts_price_ticker.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class PriceChart extends StatefulWidget {
  final List<PriceData>? priceData;
  final String? title;

  const PriceChart({super.key, required this.priceData, required this.title});

  @override
  State<PriceChart> createState() => _PriceChartState();
}

class _PriceChartState extends State<PriceChart> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfCartesianChart(
          title: ChartTitle(text: widget.title ?? ""),
          series: _buildSeriesData(widget.priceData ?? []),
        ),
      ],
    );
  }

  List<ChartSeries<PriceData, num>> _buildSeriesData(List<PriceData> data) {
    return <ChartSeries<PriceData, num>> [ 
      LineSeries<PriceData, num>(
        dataSource: data, 
        xValueMapper: (PriceData price, _) => price.date.millisecondsSinceEpoch, 
        yValueMapper: (PriceData price, _) => price.quoteOT,
      )
    ];
  }
}