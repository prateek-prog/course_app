import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text('Payment Success',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('\$35.00',
                style: TextStyle(fontSize: 30, color: Colors.green)),
            SizedBox(height: 20),
            ListTile(
              title: Text('Adobe Xd Editing Course'),
              subtitle: Text(
                  'ID Transcription: TA11231PW\nInvoice Date: Nov 14, 2023'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to home or courses page
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
