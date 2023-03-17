import 'package:flutter/material.dart';
import 'package:playstore/screen/provider/playprovider.dart';
import 'package:playstore/screen/view/tabbar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => storeprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => tabbarscreen()
        },
      ),
    )
  );
}

