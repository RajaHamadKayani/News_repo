import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class Boxing extends StatefulWidget {
  const Boxing({super.key});

  @override
  State<Boxing> createState() => _BoxingState();
}

class _BoxingState extends State<Boxing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Boxing",
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
                  "Boxing, often referred to as the sweet science, is a historic and visceral combat sport that has captivated audiences for centuries. Dating back to ancient civilizations, boxing has evolved into a highly regulated and disciplined sport. The objective is simple: two competitors face off in a square ring, aiming to outscore or knockout their opponent within a predetermined number of rounds. Boxing demands a unique combination of athleticism, strategy, and mental fortitude. The sport has produced legendary figures like Muhammad Ali, Mike Tyson, and Floyd Mayweather, whose prowess transcends the ring and influences popular culture. With weight classes ensuring fair competition, boxing showcases a diverse array of fighting styles and techniques. Major organizations such as the World Boxing Association (WBA) and World Boxing Council (WBC) oversee championship bouts, contributing to the global appeal of the sport. Whether in a local gym or a sold-out arena, the intensity of a boxing match, accompanied by the sound of leather meeting flesh, continues to resonate with fans worldwide.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
      
    );
  }
}
