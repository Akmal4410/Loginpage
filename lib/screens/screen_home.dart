import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(),
          title: Text("Person $index"),
          subtitle: Text("Chat from person $index"),
          trailing: Text("$index : 00"),
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 25,
      ),
    );
  }
}
