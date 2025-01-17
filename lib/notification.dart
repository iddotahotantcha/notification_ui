import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.notifications_none,
                          size: 30.0,
                        ),
                      ),
                      title: Text(
                        "5 New Notifications",
                        style:
                            TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "What's new in your project?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: CircleAvatar(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.messenger_outline_sharp,
                          size: 25.0,
                        ),
                      ),
                      title: Text(
                        "New Message!",
                        style:
                            TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Alex shared the project update.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: Text(
                        "Just Now",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.emoji_events_outlined,
                          size: 30.0,
                        ),
                      ),
                      title: Text(
                        "Level Up!",
                        style:
                            TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "You've Reached Senior Developper",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      trailing: Text(
                        "32 min ago",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.access_time_rounded,
                          size: 30.0,
                        ),
                      ),
                      title: Text(
                        "Reminder: Code Review",
                        style:
                            TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Frontend team code review in 15 min",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      trailing: Text(
                        "1 hour ago",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.local_offer_outlined,
                          size: 30.0,
                        ),
                      ),
                      title: Text(
                        "Special Offer!",
                        style:
                            TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Get 50% off on 1ndev/ui.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: Text(
                        "7 hours ago",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.check_circle_outline,
                          size: 30.0,
                        ),
                      ),
                      title: Text(
                        "Task Assigned!",
                        style:
                            TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "New feature implementation",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: Text(
                        "10 Jan 2025",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
