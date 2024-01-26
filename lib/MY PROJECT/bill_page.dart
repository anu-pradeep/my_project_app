import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';

class HelpAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help Alert Box Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to another screen when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnotherScreen()),
            );
          },
          child: Text("Bill Alert Box"),
        ),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the information alert on this screen
            InfoAlertBox(
              context: context,
              title: "Urgent Information",
              infoMessage: "This table requested for bill",
            );
          },
          child: Text("Show Info Alert Box"),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HelpAlert(),
  ));
}
