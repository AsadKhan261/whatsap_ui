import 'package:flutter/material.dart';
import 'package:whatsap_ui/call_screen.dart';
import 'package:whatsap_ui/chat_screen.dart';
import 'package:whatsap_ui/status_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            PopupMenuButton(
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.more_vert),
              ),
                itemBuilder: (ctx) => [
                      PopupMenuItem(
                          child: Row(
                        children: const [
                          Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          Text('Setting'),
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: const [
                          Icon(
                            Icons.language,
                            color: Colors.black,
                          ),
                          Text('Languages'),
                        ],
                      )),
                    ]),
          ],
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Camera')),
            ChatScreen(),
            StatusScreen(),
            CallScreen()
          ],
        ),
      ),
    );
  }
}
