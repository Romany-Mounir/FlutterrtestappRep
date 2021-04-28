import 'package:flutter/material.dart';

class WelcomeDetails extends StatefulWidget {
  final String title;
  final bool completed;
  WelcomeDetails({this.title, this.completed});
  @override
  _WelcomeDetailsState createState() => _WelcomeDetailsState();
}

class _WelcomeDetailsState extends State<WelcomeDetails> {
  // String myInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [InkWell(onTap: () {}, child: Icon(Icons.search))],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(widget.title),
              // TextField(
              //   onChanged: (value) {
              //     myInput = value;
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
