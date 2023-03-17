import 'package:flutter/material.dart';
import 'package:layout1/lockedsavings.dart';
import 'package:layout1/quicksaving.dart';

class DashboardPage extends StatefulWidget {
  final double totalSavings = 5000.0;
  final double lockedSavings = 2000.0;
  final double quickSavings = 3000.0;

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Savings App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ListTile(
                title: Text('Total Savings'),
                subtitle: Text('Click to view details'),
                trailing:
                    Text('\$$totalSavings', style: TextStyle(fontSize: 20.0)),
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              child: ListTile(
                title: Text('Locked Savings'),
                subtitle: Text('Click to view details'),
                trailing:
                    Text('\$$lockedSavings', style: TextStyle(fontSize: 20.0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LockedSavingsPage(
                        lockedSavings: lockedSavings,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              child: ListTile(
                title: Text('Quick Savings'),
                subtitle: Text('Click to view details'),
                trailing:
                    Text('\$$quickSavings', style: TextStyle(fontSize: 20.0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuickSavingsPage(
                        quickSavings: quickSavings,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
