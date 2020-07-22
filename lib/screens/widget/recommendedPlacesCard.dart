import 'package:flutter/material.dart';

import '../../model/destination_model.dart';
import '../../screens/widget/rating_star.dart';
import '../destinationPage.dart';

class RecommendedPlacesCard extends StatelessWidget {

  final DestinationModel destination;
  final double widthOfCard;
  final double heightOfCard;

  final double containerRadius=25;


  RecommendedPlacesCard({ @required this.destination , this.heightOfCard, this.widthOfCard });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DestinationPage(destination: destination)),
        );
      },
      child: Container(
        width: widthOfCard,
        height: heightOfCard,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(containerRadius)),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5,5),
              spreadRadius: 2,
              blurRadius: 8
            ),
          ],
        ),
        margin: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[

            ClipRRect(
              borderRadius: BorderRadius.circular(containerRadius),
              child: Image.network(
                destination.imageUrl,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null ?
                      loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                          : null,
                    ),
                  );
                },
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: widthOfCard,
                height: heightOfCard*0.32,
                padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                child: Text(
                  destination.destinationName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(containerRadius)),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: RatingStar(
                    rating: destination.ratings,
                    heightOfRating: heightOfCard*0.12,
                    widthOfRating: widthOfCard*0.55,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
