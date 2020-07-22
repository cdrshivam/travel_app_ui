import 'package:flutter/material.dart';

import './screens/landingPage.dart';

void main()
{
  runApp(
    MaterialApp(
      title: "Travel Guide",
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    ),
  );
}