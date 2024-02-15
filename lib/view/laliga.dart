import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class Laliga extends StatefulWidget {
  const Laliga({super.key});

  @override
  State<Laliga> createState() => _LaligaState();
}

class _LaligaState extends State<Laliga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Laliga",
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
                  "La Liga, officially known as the Primera División, stands as Spain's premier professional football league and is widely recognized as one of the most competitive and prestigious football competitions globally. Established in 1929, La Liga has showcased the extraordinary skill and flair of some of the world's best footballers. The league features iconic clubs like FC Barcelona and Real Madrid, whose historic rivalry, known as El Clásico, adds a layer of intensity to the competition. With its emphasis on technical proficiency and attacking football, La Liga has produced legendary players such as Lionel Messi, Cristiano Ronaldo, and Xavi Hernandez. The league's unique playing style and passionate fanbase have contributed to its international popularity. La Liga has consistently produced exciting title races, captivating football enthusiasts around the world. The league's commitment to promoting youth development and nurturing homegrown talent further cements its status as a powerhouse in the footballing landscape.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
