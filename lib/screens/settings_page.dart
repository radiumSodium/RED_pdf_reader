import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final Color _iconColor = Colors.red;
  final TextStyle _titleStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Stack(
            children: [
              Hero(
                tag: 'profile_avatar',
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/images/circle.png'),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red.shade800,
                  child: Icon(Icons.camera_alt, size: 15, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.person, color: _iconColor),
                      title: Text('Account', style: _titleStyle),
                      trailing: Icon(Icons.arrow_forward_ios, color: _iconColor),
                      onTap: () {
                        // Navigate to account settings
                      },
                    ),
                  ),
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.notifications, color: _iconColor),
                      title: Text('Notifications', style: _titleStyle),
                      trailing: Icon(Icons.arrow_forward_ios, color: _iconColor),
                      onTap: () {
                        // Navigate to notifications settings
                      },
                    ),
                  ),
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.lock, color: _iconColor),
                      title: Text('Privacy', style: _titleStyle),
                      trailing: Icon(Icons.arrow_forward_ios, color: _iconColor),
                      onTap: () {
                        // Navigate to privacy settings
                      },
                    ),
                  ),
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.help, color: _iconColor),
                      title: Text('Help & Support', style: _titleStyle),
                      trailing: Icon(Icons.arrow_forward_ios, color: _iconColor),
                      onTap: () {
                        // Navigate to help & support
                      },
                    ),
                  ),
                  Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.info_outline, color: _iconColor),
                      title: Text('About', style: _titleStyle),
                      trailing: Icon(Icons.arrow_forward_ios, color: _iconColor),
                      onTap: () {
                        // Navigate to about page
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
