/*import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course-App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Student',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/05/15/18/03/woman-769559_960_720.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/05/15/18/03/woman-769559_960_720.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/05/15/18/03/woman-769559_960_720.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Photoshop Editing Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.play_circle),
                      SizedBox(width: 8),
                      Text('30 Lessons'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 8),
                      Text('13h 30min'),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Video',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildVideoItem('Introduction', '3h 30min'),
                  SizedBox(height: 16),
                  _buildVideoItem('Install Software', '1h 30min'),
                  SizedBox(height: 16),
                  _buildVideoItem('Learn Tools', '2h 30min'),
                  SizedBox(height: 16),
                  _buildVideoItem('Tracing Sketsa', '2h 30min'),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Icon(Icons.lock),
                      SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Enroll Now'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Christiana Amandla',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lets Learning to smart',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mathematics Course',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8),
                            Text('Completed'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '20',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(width: 8),
                            Text('19 Nov, 2023'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(width: 8),
                            Text('Hours Spent'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '455',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Popular Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildCourseItem(
                          'Ps',
                          'Photoshop Editing Course',
                          '4.8 (230)',
                          '30 Lessons',
                          'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg',
                          'https://cdn.pixabay.com/photo/2015/05/15/18/03/woman-769559_960_720.jpg',
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _buildCourseItem(
                          'Ai',
                          'Illustrator Editing Course',
                          '4.8 (230)',
                          '30 Lessons',
                          'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg',
                          'https://cdn.pixabay.com/photo/2015/05/15/18/03/woman-769559_960_720.jpg',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Popular Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildCourseItem(
                    'Xd',
                    'Adobe Xd Editing Course',
                    '4.8 (230)',
                    '30 Lessons',
                    null,
                    null,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 100,
                        color: Colors.green,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Icon(
                          Icons.star,
                          color: Colors.blue,
                          size: 16,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 16,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 16,
                        ),
                      ),
                      Positioned(
                        top: 50,
                        right: 60,
                        child: Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 16,
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 60,
                        child: Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Payment Success',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$35.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 32),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/07/01/12/58/woman-5370572_960_720.jpg'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Christiana Amandla',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Adobe Xd Editing Course',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Text('ID Transcription'),
                      SizedBox(width: 16),
                      Text('TA11231PW'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Invoice Date'),
                      SizedBox(width: 16),
                      Text('Nov14, 2023'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 40,
                    child: Image.asset('assets/barcode.png'),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Done'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoItem(String title, String duration) {
    return Row(
      children: [
        Icon(Icons.lock),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(width: 16),
        Icon(Icons.access_time),
        SizedBox(width: 8),
        Text(duration),
        SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {},
          child: Text('Play Video'),
        ),
      ],
    );
  }

  Widget _buildCourseItem(
    String iconName,
    String title,
    String rating,
    String lessons,
    String? image1,
    String? image2,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            iconName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 4),
              Text(rating),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.play_circle),
              SizedBox(width: 4),
              Text(lessons),
            ],
          ),
          SizedBox(height: 16),
          if (image1 != null && image2 != null)
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(image1),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundImage: NetworkImage(image2),
                ),
                SizedBox(width: 8),
                Text('+20 Participant'),
              ],
            ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('View All'),
          ),
        ],
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
import 'screens/root_app.dart';
import 'theme/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Course App',
      theme: ThemeData(
        primaryColor: AppColor.primary,
      ),
      home: const RootApp(),
    );
  }
}*/

/*import 'package:flutter/material.dart';

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
              },
              child: Text('Enroll Now'),
            ),
          ],
        ),
      ),
    );
  }
}
Course details screen
User profile  course overview screen 
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
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
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
Payment successful screen
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
            Text('Payment Success', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('\$35.00', style: TextStyle(fontSize: 30, color: Colors.green)),
            SizedBox(height: 20),
            ListTile(
              title: Text('Adobe Xd Editing Course'),
              subtitle: Text('ID Transcription: TA11231PW\nInvoice Date: Nov 14, 2023'),
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
Rounting and main app*/

import 'package:course_app/screens/course_details_screen.dart';
import 'package:course_app/screens/payments_screen.dart';
import 'package:course_app/screens/user_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CourseDetailScreen(),
      routes: {
        '/profile': (context) => UserProfileScreen(),
        '/payment-success': (context) => PaymentSuccessScreen(),
      },
    );
  }
}
