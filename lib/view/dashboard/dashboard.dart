import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:uploading_images_to_firebase/more/more.dart';
import 'package:uploading_images_to_firebase/view/logout/log_out.dart';
import 'package:uploading_images_to_firebase/view/matchesList/categories.dart';
import 'package:uploading_images_to_firebase/view/sources_view/sources_view.dart';
import 'package:uploading_images_to_firebase/view/top_headline/top_headline.dart';


import '../navigation_drawer/navigation_drawer.dart';

// ignore: must_be_immutable
class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  List<Widget> _pages = [
   TopHeadlines(),
    SportsScreen(),
    SourcesView(),
    More(),
    LogoutScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
        // Override the back button behavior
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = 0; // Navigate to the All News page on back button press
          });
          return false; // Do not close the app
        }
        return true; // Close the app if on the All News page
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('ESGN'),
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'All News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: 'Sports Stream',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.source),
              label: 'ESGN+',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_headline),
              label: 'More',
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.logout_outlined),
              label: 'Sign Out',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class AllNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('All News Page'),
    );
  }
}

class SportsStreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Sports Stream Page'),
    );
  }
}

class NewsSourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('News Sources Page'),
    );
  }
}
