import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int i = 0;
  int phind = 0;

  void selectIndex(int value) {
    i = value;
    notifyListeners();
  }

  void changeValue(int value) {
    phind = value;
    notifyListeners();
  }

  List Image = [
    "assets/images/ajikya.jpg",
    "assets/images/aksher.jpg",
    "assets/images/ashwin.jpg",
    "assets/images/bumrah.jpg",
    "assets/images/dhoni.jpg",
    "assets/images/gill.jpg",
    "assets/images/hardik.jpg",
    "assets/images/kholi.jpg",
    "assets/images/kishan.jpg",
    "assets/images/pant.jpg",
    "assets/images/pujara.jpg",
    "assets/images/rahul.jpg",
    "assets/images/Ravindra_Jadeja.jpg",
    "assets/images/rohit.png",
    "assets/images/sachin.jpg",
    "assets/images/sehvag.jpg",
    "assets/images/shikher.webp",
    "assets/images/surya.jpg",
    "assets/images/tripathi.jpg",
    "assets/images/uv.jpg",
  ];
  List videoImage = [
    "assets/videophoto/2.jpg",
    "assets/videophoto/3.jpg",
    "assets/videophoto/4.jpg",
    "assets/videophoto/5.jpg",
    "assets/videophoto/7.jpg",
    "assets/videophoto/8.jpg",
    "assets/videophoto/9.jpg",
    "assets/videophoto/10.jpg",
    "assets/videophoto/11.jpg",
    "assets/videophoto/12.jpg",
    "assets/videophoto/13.jpg",
    "assets/videophoto/14.jpg",
    "assets/videophoto/15.jpg",
    "assets/videophoto/3.jpg",
  ];
}
