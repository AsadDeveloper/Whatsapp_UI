import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 13,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('Settings')),
                      PopupMenuItem(value: '3', child: Text('Layout')),
                    ]),
            SizedBox(
              width: 13,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/ASAD.png')),
                      title: Text('Asad Jutt'),
                      subtitle: Text('Where are you my brother?'),
                      trailing: Text('3:51PM'));
                }),
            Text('Status'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/ASAD.png')),
                      title: Text('Asad Jutt'),
                      subtitle: Text(index / 2 == 0
                          ? 'You missed audio call'
                          : 'call time is 12:34'),
                      trailing: Icon(
                          index / 2 == 0 ? Icons.phone : Icons.video_call));
                }),
          ],
        ),
      ),
    );
  }
}
