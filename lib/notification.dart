import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;

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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                          size: 30.0,
                        ),
                      ),
                      title: const Text(
                        "5 New Notifications",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "What's new in your project?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: CircleAvatar(
                          child: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: isExpanded
                          ? Column(
                              children: [
                                Divider(
                                  color: const Color.fromARGB(255, 219, 219, 219),
                                ),
                                _buildNotificationTile(
                                  icon: Icons.messenger_outline_sharp,
                                  title: "New Message!",
                                  subtitle: "Alex shared the project update.",
                                  trailing: "Just Now",
                                ),
                                _buildNotificationTile(
                                  icon: Icons.emoji_events_outlined,
                                  title: "Level Up!",
                                  subtitle: "You've Reached Senior Developer",
                                  trailing: "32 min ago",
                                ),
                                _buildNotificationTile(
                                  icon: Icons.access_time_rounded,
                                  title: "Reminder: Code Review",
                                  subtitle:
                                      "Frontend team code review in 15 min",
                                  trailing: "1 hour ago",
                                ),
                                _buildNotificationTile(
                                  icon: Icons.local_offer_outlined,
                                  title: "Special Offer!",
                                  subtitle: "Get 50% off on 1ndev/ui.",
                                  trailing: "7 hours ago",
                                ),
                                _buildNotificationTile(
                                  icon: Icons.check_circle_outline,
                                  title: "Task Assigned!",
                                  subtitle: "New feature implementation",
                                  trailing: "10 Jan 2025",
                                ),
                              ],
                            )
                          : Container(),
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

  Widget _buildNotificationTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required String trailing,
  }) {
    return ListTile(
      leading: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 219, 219, 219),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(
          icon,
          size: 25.0,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
            overflow: TextOverflow.ellipsis),
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
