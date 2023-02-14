import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bott_Nav.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
            height: double.infinity,
            width: double.infinity,
          decoration: const BoxDecoration(
            image:DecorationImage(
                image: ExactAssetImage("assets/images/mainImage.png"),
                fit: BoxFit.cover,
                   )
                  ),
                ),
            Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [Expanded(child: Container()),
               Container(
                 margin: const EdgeInsets.only(left: 30),
                 child: Row(
                   children: [
                     SizedBox(
                       child: Text('Find your\nfavourite\nmusic',
                             style: GoogleFonts.lato(
                               textStyle: const TextStyle(
                                 fontSize: 40,
                                 color: Colors.white,
                                 fontWeight: FontWeight.w800
                               )
                             ),
                       ),
                     )
                   ],
                 ),
               ),
               SizedBox(
                 child: InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Nav_Bott_(),));
                   },
                   child: Expanded(
                     child: Container
                       (
                       margin: const EdgeInsets.only(top: 80,left: 20,right: 10),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(60),
                         color: Colors.red,
                       ),

                        child: Center(
                          child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(child: Container(
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon(Icons.mail_outline_sharp,
                                         size: 35,
                                          color: Colors.white
                                      ),
                                      )
                                    ),
                                    TextSpan(
                                      children: [
                                        WidgetSpan(child: Container(
                                          padding: const EdgeInsets.only(bottom: 7),
                                          child: const Text('Continue with Email',
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white
                                            ),
                                          ),
                                         )
                                        )
                                      ],
                                    )
                                  ]
                                )
                             ),
                           ),
                          )
                         )
                     ),
                   ),

                SizedBox(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Nav_Bott_(),));
                    },

                    child: Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      margin: const EdgeInsets.all(20),
                                      decoration:BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(60),
                                        color: Colors.white38,
                                        border: Border.all(color: Colors.black,width: 2),
                                      ),
                                      child: Expanded(
                                        child: Center(
                                          child: Icon(FontAwesomeIcons.google,
                                            color: Colors.pink.shade100,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(flex: 2,
                                    child: Container(
                                        padding: const EdgeInsets.all(4.7),
                                        margin: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(80),
                                          border: Border.all(color: Colors.black,width: 2),
                                          color: Colors.white38,),
                                        child: Center(child:
                                        Expanded(
                                          child: Center(
                                            child: Icon(Icons.facebook_rounded,
                                                color: Colors.blue.shade900,
                                                size: 40),),))
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
    ]),
                 SizedBox(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children:   [Expanded(child: Container()),
                          const Padding(
                            padding: EdgeInsets.all(2),
                            child: Center(child: Text('By Continuing, you agree to the Terms of',
                              style: TextStyle(fontSize: 10,color: Colors.white),
                             )
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Center(child: Text('Service & Privacy Policy',
                                style: TextStyle(fontSize: 10,color: Colors.white)
                             )
                            ),
                          )
                     ],
                   ),
                 )
               ]
             )
           )
      );
  }
}


//