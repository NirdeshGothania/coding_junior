import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'Neelu Verma has assigned a new assignment in Machine Learning',
      avatar: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
      ),
      buttonText: 'View Assignment',
      time: 'Today at 10:49 AM',
      isImportant: true,
    ),
    NotificationItem(
      title: 'Continue a lesson to maintain your 36 days streak',
      avatar: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
      ),
      buttonText: null,
      time: 'Today at 9:00 AM',
      isImportant: false,
    ),
    NotificationItem(
      title:
          'New Challenge Alert! Solve the latest coding challenge and make it to the leaderboard!',
      avatar: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
      ),
      buttonText: 'View Challenge',
      time: 'Wednesday at 10:49 AM',
      isImportant: true,
    ),
    NotificationItem(
      title:
          'Congratulations Champion! You’ve made it to the leaderboard owing to your unmatched consistency.',
      avatar: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
      ),
      buttonText: 'View Leaderboard',
      time: 'Aug 23 at 10:49 AM',
      isImportant: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'Important'),
          ],
          labelColor: Colors.black,
          indicatorColor: Colors.pink,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildNotificationsList(notifications),
          _buildNotificationsList(
            notifications.where((n) => n.isImportant).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationsList(List<NotificationItem> notificationsList) {
    if (notificationsList.isEmpty) {
      return const Center(
        child: Text(
          'No notifications to display.',
          style: TextStyle(color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      itemCount: notificationsList.length,
      itemBuilder: (context, index) {
        final notification = notificationsList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Card(
            elevation: 2,
            child: ListTile(
              leading: notification.avatar,
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(notification.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(notification.time,
                      style: const TextStyle(color: Colors.grey)),
                  if (notification.buttonText != null) ...[
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                      ),
                      child: Text(
                        notification.buttonText!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class NotificationItem {
  final String title;
  final CircleAvatar? avatar;
  final String? buttonText;
  final String time;
  final bool isImportant;

  NotificationItem({
    required this.title,
    this.avatar,
    this.buttonText,
    required this.time,
    required this.isImportant,
  });
}
