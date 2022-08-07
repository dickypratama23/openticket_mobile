import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final ValueChanged onChanged;
  const Search({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            onChanged: onChanged,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(Icons.search, color: Colors.white),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white)
            ),
          ),
        )
      ],
    );
  }
}
