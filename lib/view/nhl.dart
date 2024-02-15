import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class NHL extends StatefulWidget {
  const NHL({super.key});

  @override
  State<NHL> createState() => _NHLState();
}

class _NHLState extends State<NHL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NHL",
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
                  "The National Hockey League (NHL) stands as the premier professional ice hockey league globally, showcasing the highest level of competition in the sport. Founded in 1917, the NHL has grown into a dynamic league with 32 teams, attracting some of the most skilled and tenacious athletes in the world. The league's trademark event, the Stanley Cup playoffs, is a grueling battle for the coveted championship trophy and is renowned for its intensity and drama. Iconic franchises such as the Montreal Canadiens, Toronto Maple Leafs, and Detroit Red Wings have contributed to the league's rich history. The NHL is characterized by its fast-paced, physical style of play, where players exhibit exceptional skill in skating, stickhandling, and goalkeeping. Legendary players like Wayne Gretzky, Bobby Orr, and Sidney Crosby have left an indelible mark on the league, further enhancing its global appeal. With a dedicated fan base and an enduring passion for the sport, the NHL remains a cornerstone of professional ice hockey and a source of excitement for fans worldwide.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
