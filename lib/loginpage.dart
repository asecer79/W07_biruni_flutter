// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 100, 150, 78),
      appBar: AppBar(title: Text("Login Page")),
      body: getLoginForm(context),
    );
  }

  Widget getLoginForm(BuildContext context) {
    var txtUserName = TextField(
      obscureText: false,
      style: TextStyle(fontSize: 18, color: Colors.white),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.all(15),
          hintText: "User Name",
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(width: 3, color: Colors.white))),
    );

    var txtPassword = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 18, color: Colors.white),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
    );

    var btnLogin = Material(
      borderRadius: BorderRadius.circular(50),
      color: Colors.green,
      elevation: 15,
      child: MaterialButton(
        onPressed: () {},
        minWidth: MediaQuery.of(context).size.width,
        child: Text("Login", style: TextStyle(fontSize: 20)),
        padding: EdgeInsets.all(15),
      ),
    );

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  "assets/images/login.jpg",
                  width: 150,
                )),
            SizedBox(height: 15),
            txtUserName,
            SizedBox(height: 15),
            txtPassword,
            SizedBox(height: 15),
            btnLogin,
          ],
        ),
      ),
    );
  }
}
