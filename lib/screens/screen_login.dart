import 'package:flutter/material.dart';
import 'package:projects/screens/screen_home.dart';

class LoginScreen extends StatelessWidget {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  String userName = "";
  String password = "";

  bool? isValidUser;
  bool? isValidPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            TextFormField(
              controller: _userNameController,
              decoration: const InputDecoration(
                labelText: "User Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // print("User Name : ${_userNameController.text}");
                // print("Passord : ${_passwordController.text}");
                userName = _userNameController.text;
                password = _passwordController.text;
                if (_userNameController.text.isEmpty &&
                    userName != "akmal4410") {
                  isValidUser = false;
                } else {
                  isValidUser = true;
                }
                if (_passwordController.text.isEmpty && password != "123456") {
                  isValidUser = false;
                } else {
                  isValidUser = true;
                }
                if (userName == "akmal4410" && password == "123456") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
                shape: const StadiumBorder(),
              ),
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
