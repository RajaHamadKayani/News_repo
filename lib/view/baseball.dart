import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class Baseball extends StatefulWidget {
  const Baseball({super.key});

  @override
  State<Baseball> createState() => _BaseballState();
}

class _BaseballState extends State<Baseball> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Baseball",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading:
            IconButton(onPressed: () 
            {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => More()));
            }, icon: const Icon(Icons.arrow_back)),
      ),
        body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Baseball, often referred to as America's pastime, is a bat-and-ball sport that has captured the hearts of fans worldwide with its rich history and timeless traditions. Originating in the 18th century and evolving into its modern form, baseball is played between two teams of nine players each. The game unfolds on a diamond-shaped field, with bases placed in a square configuration. The objective for the offensive team is to score runs by hitting a pitched ball and running around the bases, while the defensive team aims to prevent runs through pitching, fielding, and strategic maneuvers. Baseball has produced iconic moments, legendary players such as Babe Ruth, Willie Mays, and Hank Aaron, and historic rivalries like the Yankees vs. Red Sox, contributing to its enduring popularity. The sport's allure extends beyond the game itself, encompassing traditions like the seventh-inning stretch and the World Series, which crowns the champion of Major League Baseball (MLB). With its nostalgic charm and ever-evolving appeal, baseball continues to hold a special place in the hearts of sports enthusiasts around the globe.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
