import 'package:flutter/material.dart';

Widget listItem(String img,String movieName){
  return Container(
    height: 300,
    width: 180,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 280.0,
          width: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(img),
              fit:BoxFit.cover,
            ),
          ),
        ),
        Text(
          movieName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}