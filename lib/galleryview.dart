import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/home/provider/home_provider.dart';

class Gallery1 extends StatefulWidget {
  const Gallery1({Key? key}) : super(key: key);

  @override
  State<Gallery1> createState() => _Gallery1State();
}

class _Gallery1State extends State<Gallery1> {
  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: PageView.builder(
        // controller: PageController
        itemCount: providerT!.Image.length,
        controller: PageController(
          initialPage: providerT!.Photoindex,
        ),

        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          providerF!.changeValue(value);
        },
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 120,
            child: Image.asset(
              "${providerT!.Image[providerT!.Photoindex]}",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}


