import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class BasketBall extends StatefulWidget {
  const BasketBall({super.key});

  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BasketBall",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => More()));
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                            "Basketball, a fast-paced and dynamic sport, has become a global phenomenon that resonates with fans of all ages. Invented by Dr. James Naismith in 1891, basketball has evolved into a thrilling game played between two teams of five players each. The objective is simple yet exhilarating: score points by shooting a ball through the opponent's hoop. The sport is characterized by its high-scoring nature, rapid transitions, and iconic moments such as slam dunks and three-pointers. Basketball has produced legendary figures like Michael Jordan, LeBron James, and Kobe Bryant, whose skills and achievements have left an indelible mark on the sport's history. Leagues such as the National Basketball Association (NBA) in the United States and international competitions like the FIBA Basketball World Cup showcase the best talents on a global stage. With its blend of athleticism, strategy, and entertainment value, basketball continues to captivate audiences worldwide, from neighborhood courts to grand arenas, fostering a deep love for the game across diverse cultures and communities.",
                            style: TextStyle(fontSize: 20),
                          )
            ],
          ),
        ),
      ),
    );
  }
}
