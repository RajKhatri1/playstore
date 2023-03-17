import 'package:flutter/material.dart';

class storeprovider extends ChangeNotifier {
  int i=0;
  void addScreen(int value){
    i=value;
    notifyListeners();
  }
  List name = [
    "Subway surfers",
    "candy crush",
    "Ninja",
    "Earn to die",
    "Hill climeb",
  ];

  List rating = [
    "4.5",
    "4.5",
    "4.2",
    "4.2",
    "4.0",
  ];

  List img = [
    "asset/images/sub.png",
    "asset/images/candy1.png",
    "asset/images/etd1.jpg",
    "asset/images/setd.jpg",
    "asset/images/hill.png",
  ];

  List images = [
    "asset/images/subway.png",
    "asset/images/can.jpeg",
    "asset/images/na2.webp",
    "asset/images/etd.jpg",
  ];

  List simages = [
    "asset/images/sub.png",
    "asset/images/candy1.png",
    "asset/images/etd1.jpg",
    "asset/images/setd.jpg",
  ];

  List sname = [
    "Subway surfers",
    "Candy crush",
    "Ninja",
    "Earn to die",
  ];


  List MainImage = [
    "asset/images/sub.png",
    "asset/images/candy1.png",
    "asset/images/etd1.jpg",
    "asset/images/setd.jpg",
    "asset/images/hill.png",
  ];


  List MainName = [
    "Subway surfers",
    "candy crush",
    "Ninja",
    "Earn to die",
    "Hill climeb",
  ];
}
