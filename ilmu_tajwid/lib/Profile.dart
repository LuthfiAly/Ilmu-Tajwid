import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: profile1(),
    );
  }
}

class profile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/upi.jpg'),
        ),
      ),
    );
  }
}
