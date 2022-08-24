import 'package:flutter/material.dart';
import 'package:projects/screens/screen_signout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
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
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/fishfrek.jpg"),
                  radius: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Fishing Freaks",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage("assets/images/fishfrek.jpg"),
            ),
            const SizedBox(height: 20),
            /////////////////////////////////////////////////////////
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dq.jpg"),
                  radius: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Dulquer Salmaan",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage("assets/images/dq.jpg"),
            ),
            const SizedBox(height: 20),
            /////////////////////////////////////////////////////////
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/messi.png"),
                  radius: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Leonel Messi",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage("assets/images/messi.png"),
            ),
            const SizedBox(height: 20),
            /////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
