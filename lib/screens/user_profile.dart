import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/profile.svg'),
              ),
              title: Text('Christiana Amandla'),
              subtitle: Text('Lets learning to smart'),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mathematics Course'),
                      Text('19 Nov, 2023'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Completed: 20'),
                      Text('Hours Spent: 455'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Popular Courses'),
            // Add course cards here...
            // ...
          ],
        ),
      ),
    );
  }
}
