import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text('Sebastian Garzon',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.dribbble.com/users/174756/avatars/small/AVATAR.png?1403071255',
                ),
              ),
            ),
          ],
          backgroundColor: Color(0xff070917),
          elevation: 0.0,
          bottomOpacity: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xff070917),
            child: Column(
              children: [
                DailyProgressIndicator(),
                IndicatorWidget(),
                Tasks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        // color: Color(0xff0F1121),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Your Tasks'),
                Spacer(),
                ElevatedButton(child: Icon(Icons.add), onPressed: () {})
              ],
            ),
            Column(
              children: [
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          Column(
            children: [
              Text('Team catch up- Online meeting'),
              Row(
                children: [
                  Text('9:00 AM'),
                  Text('WORK'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xff6C4ED8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Text('356'),
                  Text('Completed'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xff0883BF),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Text('16'),
                  Text('Task/Day'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xff1558D7),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Text('89%'),
                  Text('Productivity'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DailyProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Progress',
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Text(
                '65%',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            value: 0.99,
            minHeight: 6.0,
            valueColor: AlwaysStoppedAnimation(Colors.green),
          ),
        ],
      ),
    );
  }
}
