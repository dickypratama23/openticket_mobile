import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4C3A51),
      appBar: AppBar(
        title: Text(
          "HISTORY",
          style: TextStyle(
            letterSpacing: 4 / 10,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff4C3A51),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications, size: 22))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: Color(0xff774360),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
