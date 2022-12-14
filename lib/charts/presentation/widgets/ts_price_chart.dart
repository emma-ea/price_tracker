import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
          primaryXAxis: DateTimeAxis(dateFormat: DateFormat.MMMEd()),
          series: _buildSeriesData(widget.priceData ?? []),
          crosshairBehavior: CrosshairBehavior(enable: true),
        ),
      ],
    );
  }

  List<ChartSeries<PriceData, DateTime>> _buildSeriesData(List<PriceData> data) {
    return <ChartSeries<PriceData, DateTime>> [ 
      // HiloOpenCloseSeries<PriceData, DateTime>(
      //   dataSource: data, 
      //   spacing: 0,
      //   bearColor: Colors.red,
      //   bullColor: Colors.blue,
      //   xValueMapper: (PriceData price, _) => price.date, 
      //   closeValueMapper: (PriceData price, _) => price.quoteOT,
      //   openValueMapper: (PriceData price, _) => price.quoteOT,
      //   highValueMapper: (PriceData price, _) => price.quoteOT,
      //   lowValueMapper: (PriceData price, _) => price.quoteOT,
      // ),
      LineSeries<PriceData, DateTime>(
        dataSource: data, 
        xValueMapper: (PriceData datum, _) => datum.date, 
        yValueMapper: (PriceData datum, _) => datum.quoteOT,
      ),
    ];
  }
}