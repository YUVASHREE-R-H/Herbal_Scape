import 'package:flutter/material.dart';

class PlantDetailsPage extends StatelessWidget {
  final String plantName;
  final String benefits;
  final String usage;

  PlantDetailsPage({
    required this.plantName,
    required this.benefits,
    required this.usage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Plant Name: $plantName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Key Benefits: $benefits',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Usage Info: $usage',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
