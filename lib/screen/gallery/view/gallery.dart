import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class Gallery_Screen extends StatefulWidget {
  const Gallery_Screen({Key? key}) : super(key: key);

  @override
  State<Gallery_Screen> createState() => _Gallery_ScreenState();
}

class _Gallery_ScreenState extends State<Gallery_Screen> {
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
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Gallery",
            style: GoogleFonts.actor(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 10),
          itemCount: providerT!.Image.length,
          itemBuilder: (context, index) {
            return Myphotos(providerT!.Image[index], index);
            //
            //
            //
            // Container(
            //   height: 200,
            //   width: 200,
            //   child: Image.asset("${providerT!.Image[index]}"),
            // );
          },
        ),
      ),
    );
  }

  Widget Myphotos(String? image, int index) {
    return InkWell(
      onTap: () {
        providerT!.changeValue(index);
        Navigator.pushNamed(
          context,
          "Gallery1",
        );
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(
          "${image}",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
