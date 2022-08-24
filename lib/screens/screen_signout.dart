import 'package:flutter/material.dart';
import 'package:projects/screens/screen_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignoutScreen extends StatelessWidget {
  const SignoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        actions: [
          IconButton(
            onPressed: () {
              signOut(context);
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: const <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/akmal.jpg"),
              ),
              title: Text(
                "Mohammed Akmal",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("Available"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.key),
              title: Text(
                "Account",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text("Privacy, security, change number"),
            ),
            ListTile(
              leading: Icon(Icons.chat_rounded),
              title: Text(
                "Chats",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text("Theme, wallpapers, chat history"),
            ),
            ListTile(
              leading: Icon(Icons.sd_storage_rounded),
              title: Text(
                "Storage and data",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text("Network usage, auto-download"),
            ),
            ListTile(
              leading: Icon(Icons.question_mark_rounded),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text("Help center, contact us, privacy policy"),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text(
                "Invite a friend",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signOut(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (ctx1) => LoginScreen(),
        ),
        (route) => false);
  }
}
