import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Go back to previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photoshop Editing Course',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text('30 Lessons'),
            Text('13h 30min'),
            SizedBox(height: 20),
            ListTile(
              title: Text('Introduction'),
              subtitle: Text('3h 30min'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Play Video'),
              ),
            ),
            ListTile(
              title: Text('Install Software'),
              subtitle: Text('1h 30min'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Play Video'),
              ),
            ),
            // Add more lessons here...
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Enroll action
                Navigator.pushNamed(context, '/profile');
              },
              //child: Text('Enroll Now'),
              child: Text("Go to Profile"),
            ),
            SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment-success');
              },
              child: Text("Go to Payment Success"),
            ),
          ],
        ),
      ),
    );
  }
}
