import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:screen/page1.dart';
import 'package:screen/page2.dart';
import 'package:screen/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MusicPage extends StatefulWidget {

   final PageController _controller = PageController();
   MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {

  List <Widget>items = [
   Page1(),
    Page2(),
    Page3()
  ];

   int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
         var _controller;
         return Scaffold(
           body: Stack(
             alignment: Alignment.bottomCenter,
             children:[CarouselSlider(items: items.map((image) => Builder(builder: (BuildContext context) {
               return Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5)
                 ),
               );
             },
             )).toList(),
               options: CarouselOptions(
                 onPageChanged: (index, reason) {
                   setState(() {
                     activeIndex=index;
                   });
                 },
                 height: 200,
                 viewportFraction: 1 ,
                 autoPlay: true,
               ),
             ),
           SizedBox(
             child: PageView(
               controller: _controller,
               children: [
                 Page1(),
                 Page2(),
                 Page3()
               ],
             ),
           ),
               SmoothPageIndicator(
                   controller: _controller,
                   count: 3)
             ]

           )
            );
   }
  }


