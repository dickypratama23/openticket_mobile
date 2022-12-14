import 'package:flutter/material.dart';
import 'package:openticket_mobile/widgets/_card.dart';
import 'package:openticket_mobile/widgets/_category.dart';
import 'package:openticket_mobile/widgets/_search.dart';

import 'package:openticket_mobile/Models/tiket.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff4C3A51),
      appBar: AppBar(
        title: Text(
          "HOME",
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
        bottom: false,
        child: Column(
          children: <Widget>[
            Search(
              onChanged: (value) {
                print(value);
              },
            ),
            CategotyList(),
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
                  ListView.builder(
                    itemCount: tikets.length,
                    itemBuilder: (context, index) =>  CustomCard(
                      itemIndex: index,
                      tiket: tikets[index],
                      press: () {
                        print(123);
                      },
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
