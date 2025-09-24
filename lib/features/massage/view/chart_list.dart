import 'package:flutter/material.dart';

class ChartListScreen extends StatelessWidget {
  final List<Widget> charts;

  ChartListScreen({required this.charts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Messages'),
      ),
      body: Column(
        children: [
          
          ListView.builder(
          itemCount: charts.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: charts[index],
              ),
            );
          },
              ),
        ],
      ),
    );
  }
}