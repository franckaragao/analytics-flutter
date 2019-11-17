import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimplePieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimplePieChart(this.seriesList, {this.animate});


  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(
      seriesList, 
      animate: animate,
      defaultRenderer: new charts.ArcRendererConfig(
        arcWidth: 40,
        arcRendererDecorators: [new charts.ArcLabelDecorator()])
    );
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}