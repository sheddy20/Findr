import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhapy/views/home_view.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 60.0,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage("Asset/sa7.jpg"),
              radius: 60.0,
            ),
          ),
          Divider(
            color: Colors.black,
            height: 50.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              bottom: 10.0,
            ),
            child: TextField(
              cursorColor: Colors.black,
              controller: _userNameController,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
              decoration: InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(Icons.person_add),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              bottom: 10.0,
            ),
            child: TextField(
              cursorColor: Colors.black,
              obscureText: true,
              controller: _passwordController,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: 50.0,
            child: MaterialButton(
              onPressed: () => Get.to(HomeView()),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Text("Login"),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
