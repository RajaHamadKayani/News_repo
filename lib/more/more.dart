import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/view/baseball.dart';
import 'package:uploading_images_to_firebase/view/basketball.dart';
import 'package:uploading_images_to_firebase/view/boxing.dart';
import 'package:uploading_images_to_firebase/view/dashboard/dashboard.dart';
import 'package:uploading_images_to_firebase/view/english_remiere.dart';
import 'package:uploading_images_to_firebase/view/footaball.dart';
import 'package:uploading_images_to_firebase/view/golf.dart';
import 'package:uploading_images_to_firebase/view/laliga.dart';
import 'package:uploading_images_to_firebase/view/mlb.dart';
import 'package:uploading_images_to_firebase/view/nhl.dart';
import 'package:uploading_images_to_firebase/view/sports_betting.dart';
import 'package:uploading_images_to_firebase/view/ufc.dart';

class More extends StatelessWidget {
  final List<String> sports = [
    "Football",
    "Basketball",
    "Golf",
    "UFC",
    "Boxing",
    "NHL",
    "MLB",
    "Spanish Laliga",
    "Base Ball",
    "English Premiere League",
    "Sports betting"
  ];
  final List<String> sportImages = [
    "assets/images/footbal.png",
    "assets/images/basketball.png",
    "assets/images/golf.jpg",
    "assets/images/ufc.png",
    "assets/images/ufc.png",
    "assets/images/nhl.png",
    "assets/images/mlb.jpg",
    "assets/images/laliga.png",
    "assets/images/baseball.jpg",
    "assets/images/english.jpg",
    "assets/images/sports_betings.jpg",
  ];
  navToNext(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Football()));
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BasketBall()));
        break;
      case 2:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Golf()));
        break;
      case 3:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => UFC()));
        break;
      case 4:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Boxing()));
        break;
      case 5:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => NHL()));
        break;
      case 6:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MLB()));
        break;
      case 7:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Laliga()));
        break;
      case 8:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Baseball()));
        break;
      case 9:
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => EnglishPremiere()));
        break;
      case 10:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SportsBetting()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Sports'),
                leading:
            IconButton(onPressed: () 
            {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MyBottomNavigationBar()));
            }, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: sports.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    navToNext(index, context);
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(sportImages[index]),
                    ),
                    title: Text(sports[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SportTile extends StatelessWidget {
  final String sportName;
  final String sportImage;

  SportTile({required this.sportName, required this.sportImage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(sportImage),
      ),
      title: Text(sportName),
    );
  }
}
