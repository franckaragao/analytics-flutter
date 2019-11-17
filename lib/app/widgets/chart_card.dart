import 'package:analytics_flutter/app/constants/theme.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {

  final String title;
  final Widget child;

  ChartCard({ @required this.title, @required this.child });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(title),
                Badge(
                  badgeContent: Text('3'),
                  badgeColor: Colors.grey,
                  child: Icon(
                    Icons.message,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: SizedBox(
                height: 200.0,
                child: this.child,
              ),
            )
          ],
        ),
      ),
    );
  }
}