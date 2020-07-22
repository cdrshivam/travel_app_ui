import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30,30,30,0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search,color: Colors.black54,),
          hintText: "Search your favourite place",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
            borderSide: BorderSide(width: 0),
          ),
        ),
      ),
    );
  }
}
