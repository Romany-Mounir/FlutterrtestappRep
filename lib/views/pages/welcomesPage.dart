import 'package:flutter/material.dart';
import 'package:testapp/models/Welcome.dart';
import 'package:testapp/services/WelcomeService.dart';
import 'package:testapp/views/widgets/MyCard.dart';

class WelcomesPage extends StatefulWidget {
  @override
  _WelcomesPageState createState() => _WelcomesPageState();
}

class _WelcomesPageState extends State<WelcomesPage> {
  bool loading = true;
  List<Welcome> welcome = [];

  getData() async {
    welcome = await WelcomeService().getWelcomes();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcomes"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            ))
          : ListView.builder(
              itemCount: welcome.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCard(
                  welcome: welcome[index],
                  title: welcome[index].title,
                  completed: welcome[index].completed,
                );
              },
            ),
    );
  }
}
