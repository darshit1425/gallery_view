import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class Video_Screen extends StatefulWidget {
  const Video_Screen({Key? key}) : super(key: key);

  @override
  State<Video_Screen> createState() => _Video_ScreenState();
}

class _Video_ScreenState extends State<Video_Screen> {
  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.filter_tilt_shift,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: SingleChildScrollView(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Videos",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ),
                  ListView.builder(

                    itemCount: providerT!.videoImage.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            "${providerT!.videoImage[index]}",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // trailing: Text(
                        //   "8.10 PM",
                        //   style: TextStyle(color: Colors.white),
                        // ),

                        subtitle: Text(
                          "62.04\n ",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),

                        title: Text(
                          "Farzi.S01.E2...HDHub4u.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      );
                    },
                  )

                  // ListTile(
                  //   leading: Container(
                  //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  //     height: 100,
                  //      width: 100,
                  //
                  //      child: Image.asset(""),
                  //   ),
                  //   trailing: Text(
                  //     "8.10 PM",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  //   subtitle: Text(
                  //     "Hello good moring ?",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  //   title: Text(
                  //     "Darshit",
                  //     style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
