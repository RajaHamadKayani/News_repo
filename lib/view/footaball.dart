import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class Football extends StatefulWidget {
  const Football({super.key});

  @override
  State<Football> createState() => _FootballState();
}

class _FootballState extends State<Football> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Football",
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
                  "Football, also known as soccer in some regions, is a globally celebrated sport that captivates millions of fans with its thrilling combination of skill, strategy, and teamwork. Played between two teams of eleven players each, the objective is simple: score goals by getting the ball into the opposing team's net. The game is known for its dynamic nature, requiring players to demonstrate exceptional agility, precision, and endurance. Football has a rich history, with its origins dating back centuries and evolving into the modern game we know today. The sport has an extensive and passionate fan base, with major leagues and tournaments such as the FIFA World Cup, UEFA Champions League, and various domestic leagues attracting worldwide attention. Iconic players, legendary moments, and intense rivalries have contributed to football's status as one of the most popular and widely watched sports across the globe.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
      
    );
  }
}
