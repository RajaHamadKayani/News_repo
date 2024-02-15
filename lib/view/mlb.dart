import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class MLB extends StatefulWidget {
  const MLB({super.key});

  @override
  State<MLB> createState() => _MLBState();
}

class _MLBState extends State<MLB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MLB",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading:
            IconButton(onPressed: () {
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
                  "Major League Baseball (MLB) stands as the pinnacle of professional baseball, representing the highest level of competition in the sport. Established in 1869, MLB has evolved into a sprawling league comprising 30 teams, divided into the American League (AL) and the National League (NL). The league's rich history is marked by iconic moments, legendary players, and historic rivalries, including the timeless clash between the New York Yankees and the Boston Red Sox. The sport's traditions, such as the World Series, where the champions of the AL and NL face off, have become ingrained in American culture. Baseball legends like Babe Ruth, Willie Mays, and Jackie Robinson have left an indelible impact on the sport. With its enduring appeal, MLB draws fans to ballparks across the United States, creating an atmosphere that combines athleticism, strategy, and a sense of national pastime. The crack of the bat, the smell of fresh-cut grass, and the excitement of a well-pitched game all contribute to the timeless charm of Major League Baseball.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
