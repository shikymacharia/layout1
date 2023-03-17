import 'package:flutter/material.dart';

class LockedSavingsPage extends StatelessWidget {
  final double lockedSavings;

  LockedSavingsPage({required this.lockedSavings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Locked Savings'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'locked save account: \$${lockedSavings.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const Card(
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
            )
          ],
        ));
  }
}
