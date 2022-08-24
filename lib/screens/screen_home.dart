import 'package:flutter/material.dart';
import 'package:projects/screens/screen_signout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignoutScreen()),
              );
            },
            icon: const Icon(
              Icons.account_circle_rounded,
              size: 27,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(),
            title: Text("Person ${index + 1}"),
            subtitle: Text("Chat from person ${index + 1}"),
            trailing: Text("$index : 00"),
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 25,
        ),
      ),
    );
  }
}
