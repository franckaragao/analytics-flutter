
import 'package:analytics_flutter/app/screens/dashboard/simple_pie_chart.dart';
import 'package:analytics_flutter/app/widgets/chart_card.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DashboardScreen extends StatelessWidget {
  final Color color;
  DashboardScreen(this.color);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChartCard(
        title: 'Atual x Meta',
        child: SimplePieChart(_createSampleData(), animate: true,),
        ),
    );
  }

  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 10),
      new LinearSales(1, 75),
      new LinearSales(2, 25),
      new LinearSales(3, 5),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
        labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}'
      )
    ];
  }
}