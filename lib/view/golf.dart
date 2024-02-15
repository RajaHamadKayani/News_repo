import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class Golf extends StatefulWidget {
  const Golf({super.key});

  @override
  State<Golf> createState() => _GolfState();
}

class _GolfState extends State<Golf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Golf",
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
                  "Golf, a timeless and elegant sport, is renowned for its precision, strategy, and the serene landscapes that often accompany its courses. Originating in 15th-century Scotland, golf has evolved into a global pastime with a rich tradition and a dedicated following. The objective of the game is to navigate the course in as few strokes as possible, with players using a variety of clubs to adapt to different terrains and distances. Golfers compete individually or in teams, and the sport's major tournaments, such as The Masters, The Open Championship, and the Ryder Cup, hold iconic status in the world of sports. Professional golfers, such as Tiger Woods, Jack Nicklaus, and Annika Sörenstam, have achieved legendary status through their skill, dedication, and numerous accolades. Beyond its competitive aspect, golf is celebrated for its sportsmanship and the camaraderie it fosters on the course. With a broad appeal across age groups and skill levels, golf continues to be a sport that combines the thrill of competition with the tranquility of the great outdoors.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
