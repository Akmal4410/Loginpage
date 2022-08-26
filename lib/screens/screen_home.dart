import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projects/screens/screen_signout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignoutScreen()),
              );
            },
            icon: const Icon(
              Icons.account_circle_rounded,
              size: 27,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/fishfrek.jpg"),
                radius: 25,
              ),
              title: Text(
                "Fishing Freaks",
                style: TextStyle(
                  fontFamily: "SourceSanspro",
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Image(
                image: AssetImage("assets/images/fishfrek.jpg"),
              ),
            ),

            /////////////////////////////////////////////////////////
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dq.jpg"),
                radius: 25,
              ),
              title: Text(
                "Dulquer Salmaan",
                style: TextStyle(
                  fontFamily: "SourceSanspro",
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Image(
                image: AssetImage("assets/images/dq.jpg"),
              ),
            ),
            /////////////////////////////////////////////////////////

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/messi.png"),
                radius: 25,
              ),
              title: Text(
                "Leonel Messi",
                style: TextStyle(
                  fontFamily: "SourceSanspro",
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Image(
                image: AssetImage("assets/images/messi.png"),
              ),
            ),
            /////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
