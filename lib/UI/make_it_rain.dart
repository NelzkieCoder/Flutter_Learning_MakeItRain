import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      moneyCounter = moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make It rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Sample",
                style: TextStyle(color: Colors.grey, fontSize: 30.0),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Money!  \$$moneyCounter",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 37.7,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                   padding: EdgeInsets.all(20.0),
                  color: Colors.purple.shade600,
                  onPressed: () => _rainMoney(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    "Let it Rain!",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
