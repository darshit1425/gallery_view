import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_view/galleryview.dart';
import 'package:gallery_view/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

import 'screen/gallery/view/gallery.dart';
import 'screen/home/view/home_screen.dart';
import 'screen/profile/view/profile.dart';
import 'screen/video/view/video.dart';



void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: Gallery_Screen(),
        routes: {
          '/': (context) => Home_Screen(),
          'gallery': (context) => Gallery_Screen(),
          'video': (context) => Video_Screen(),
          'profile': (context) => Profile_Screen(),
          'Gallery1': (context) => Gallery1(),
        },
      ),
    ),
  );
}
