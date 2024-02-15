import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class SportsBetting extends StatefulWidget {
  const SportsBetting({super.key});

  @override
  State<SportsBetting> createState() => _SportsBettingState();
}

class _SportsBettingState extends State<SportsBetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sports Betting",
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
                  "Sports betting has become an integral aspect of the sports industry, offering enthusiasts the opportunity to engage with their favorite games on a more immersive level. This form of gambling involves predicting and wagering on the outcome of sports events, ranging from traditional contests like football and basketball to more niche activities such as horse racing and esports. Over the years, sports betting has evolved from local bookmakers to sophisticated online platforms, providing a convenient and accessible avenue for enthusiasts to place bets. The industry's growth has been propelled by the development of odds analysis, live betting, and a myriad of betting markets, contributing to the overall excitement and engagement of sports fans. However, the activity also raises ethical concerns related to problem gambling and match-fixing. As sports betting continues to shape the landscape of the sports industry, its impact on fan experience, revenue generation, and regulatory frameworks remains a subject of ongoing discussion and scrutiny.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
