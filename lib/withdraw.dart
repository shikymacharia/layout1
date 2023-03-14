import 'package:flutter/material.dart';

class WithdrawPage extends StatefulWidget {
  @override
  _WithdrawPageState createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  TextEditingController _amountController = TextEditingController();

  double _withdrawalAmount = 0.0;
  bool _withdrawalSuccess = false;

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  void _makeWithdrawal() {
    setState(() {
      _withdrawalAmount = double.parse(_amountController.text);
      _withdrawalSuccess = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Withdraw'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: _withdrawalSuccess
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.red,
                      size: 80.0,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'withdrawal of \$$_withdrawalAmount successful!',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Enter amount to withdraw:',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: _amountController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      hintText: 'Amount in KES',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => _makeWithdrawal(),
                    child:
                        Text('withdraw', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
