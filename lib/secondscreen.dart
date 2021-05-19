import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final namecontroler = new TextEditingController();

    final mobilecontroler = new TextEditingController();

    final mailcontroler = new TextEditingController();

    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.name,
              controller: namecontroler,
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: mobilecontroler,
              decoration: InputDecoration(
                hintText: "Mobile no.",
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: mailcontroler,
              decoration: InputDecoration(
                hintText: "Email address",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var name_user = namecontroler.text;
                var mobile_user = mobilecontroler.text;
                var mail_user = mailcontroler.text;
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Third Screen'),
            )
          ],
        ),
      ),
    );
    return scaffold;
  }

  onPressed() {}
}
