import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class EnglishPremiere extends StatefulWidget {
  const EnglishPremiere({super.key});

  @override
  State<EnglishPremiere> createState() => _EnglishPremiereState();
}

class _EnglishPremiereState extends State<EnglishPremiere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "English Premiere",
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
                  "The English Premier League (EPL) stands as one of the most celebrated and globally renowned football leagues, captivating audiences with its intense competition, rich history, and diverse array of talent. Established in 1992, the EPL brought a new era to English football, evolving into a dynamic league featuring 20 top-flight clubs. The league has witnessed iconic moments, legendary rivalries, and remarkable individual performances. Clubs like Manchester United, Liverpool, and Chelsea have consistently dominated the league, contributing to the EPL's reputation as one of the most competitive in the world. Star players such as Thierry Henry, Wayne Rooney, and Sergio Agüero have graced the league, leaving an indelible mark on its storied history. The atmosphere in English stadiums, known for its passionate fans, adds to the league's allure. With a global fan base and extensive television viewership, the English Premier League remains a powerhouse in the world of football, setting the standard for excellence and excitement.",style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
