import 'package:flutter/material.dart';

import '../../model/guide_model.dart';

class TouristGuideCard extends StatelessWidget {
  final GuideModel guide;

  TouristGuideCard({@required this.guide});

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: (){},
    child: Container(
        margin: EdgeInsets.fromLTRB(20,0,0,20),
        child: CircleAvatar(
          backgroundImage: NetworkImage(guide.imageUrl),
          radius: MediaQuery.of(context).size.height*0.045,

        ),
    ),
  );
  }
}
