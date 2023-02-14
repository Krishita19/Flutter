import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screen/profile_page.dart';
import 'package:screen/save_page.dart';
import 'package:screen/search_page.dart';

import 'music_Page.dart';

class Nav_Bott_ extends StatefulWidget {
  const Nav_Bott_({Key? key}) : super(key: key);

  @override
  State<Nav_Bott_> createState() => _Nav_Bott_State();
}

class _Nav_Bott_State extends State<Nav_Bott_> {
  int selectedindex = 0;
  List<Widget> widgetslist =  [
   MusicPage(),
   SearchPage(),
   SavePage(),
   ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 17, 19),
        body: widgetslist[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255,27,23,36),
            elevation: 10,
            unselectedItemColor: const Color.fromARGB(255, 127,125,137),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.music,size: 26),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined,size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border_outlined,size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded,size: 30),
                label: '',
              ),
            ],
            currentIndex: selectedindex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
          ),
        ),
    );
  }
}
