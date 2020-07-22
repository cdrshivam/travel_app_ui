import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {

  final int rating;
  final double heightOfRating;
  final double widthOfRating;

  RatingStar({@required this.rating,this.heightOfRating,this.widthOfRating});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfRating,
      width: widthOfRating,
      color: Colors.transparent,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.star,color: rating>=1? Colors.orange[900]: Colors.grey[800],size: 20,),
          Icon(Icons.star,color: rating>=2? Colors.orange[900]: Colors.grey[800],size: 20,),
          Icon(Icons.star,color: rating>=3? Colors.orange[900]: Colors.grey[800],size: 20,),
          Icon(Icons.star,color: rating>=4? Colors.orange[900]: Colors.grey[800],size: 20,),
          Icon(Icons.star,color: rating>=5? Colors.orange[900]: Colors.grey[800],size: 20,),
        ],
      ),
    );
  }
}
