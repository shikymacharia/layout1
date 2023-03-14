import 'package:flutter/material.dart';

class QuickSavingsPage extends StatelessWidget {
  final double quickSavings;

  QuickSavingsPage({required this.quickSavings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Savings'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'quick save account: \$${quickSavings.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // replace with actual number of transactions
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text('Deposit'),
                    subtitle: Text('Mar 1, 2023'),
                    trailing: Text(
                      '+\$100.00',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
