import 'package:flutter/material.dart';
import 'package:gallery_view/screen/home/provider/home_provider.dart';
import 'package:gallery_view/screen/profile/view/profile.dart';
import 'package:gallery_view/screen/video/view/video.dart';
import 'package:provider/provider.dart';

import '../../gallery/view/gallery.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeProvider? homeproviderfalse;
  HomeProvider? homeProviderTrue;

  List screen = [
    Gallery_Screen(),
    Video_Screen(),
    Profile_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: screen[homeProviderTrue!.i],
        bottomNavigationBar: BottomNavigationBar(
          // indicatorColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.grey),
          backgroundColor: Colors.grey.shade200,
          currentIndex: homeProviderTrue!.i,
          onTap: (value) {
            homeproviderfalse!.selectIndex(value);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark),
              label: "Gallry",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video),
              label: "Video",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
