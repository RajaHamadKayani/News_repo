import 'package:flutter/material.dart';
import 'package:uploading_images_to_firebase/more/more.dart';

class UFC extends StatefulWidget {
  const UFC({super.key});

  @override
  State<UFC> createState() => _UFCState();
}

class _UFCState extends State<UFC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UFC",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => More()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The Ultimate Fighting Championship (UFC) has emerged as a dynamic and compelling force in the world of mixed martial arts (MMA). Established in 1993, the UFC has evolved from a one-night tournament to a global phenomenon, showcasing the skills of elite fighters across various weight classes. MMA, a combination of striking and grappling techniques, has become synonymous with the UFC, captivating audiences with its fast-paced, high-impact contests. The octagon, the iconic arena where UFC bouts take place, has witnessed memorable showdowns, incredible comebacks, and historic moments in the sport's history. Fighters from diverse martial arts backgrounds converge in the UFC, creating a melting pot of styles and strategies. Notable athletes like Conor McGregor, Amanda Nunes, and Khabib Nurmagomedov have risen to international stardom, contributing to the UFC's status as the premier organization in the MMA world. With a global fan base and events held around the world, the UFC continues to push the boundaries of combat sports, providing thrilling entertainment and showcasing the extraordinary athleticism and dedication of its fighters.",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
