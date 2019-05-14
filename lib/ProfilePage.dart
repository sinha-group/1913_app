import 'package:flutter/material.dart';
import 'NavigationBar.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ProfileLayout(),
      bottomNavigationBar: NavigationBar(),
    );
  }

}

class ProfileLayout extends StatefulWidget {
  @override
  ProfileLayoutState createState() => new ProfileLayoutState();
}

class ProfileLayoutState extends State<ProfileLayout> {
  @override
  Widget build(BuildContext context) {
    return new ListView(

    );
  }
}