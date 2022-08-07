import 'package:flutter/material.dart';

class CategotyList extends StatefulWidget {
  const CategotyList({Key? key}) : super(key: key);

  @override
  State<CategotyList> createState() => _CategotyListState();
}

class _CategotyListState extends State<CategotyList> {
  int selectedIndex = 0;
  List categories = ['All', 'New', 'Progress', 'Closed', 'SLA'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: index == categories.length - 1 ? 20 : 0,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: index == selectedIndex ? Colors.white.withOpacity(0.4) : Colors.transparent,
                borderRadius: BorderRadius.circular(6)
              ),
              child: Text(
                categories[index],
              ),
            ),
          ),
        ),
    );
  }
}
