import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/destination_model.dart';
import './widget/rating_star.dart';

class DestinationPage extends StatelessWidget {

  final DestinationModel destination;

  DestinationPage({@required this.destination});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            destination.imageUrl,
            fit: BoxFit.cover,
            //color: Colors.red,
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    spreadRadius: 1.5,
                    offset: Offset(10,10)
                  ),
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        child: Container(
                          margin: EdgeInsets.only(left: 20,top: 30),
                          child: Text(destination.destinationName,style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w900),),
                        ),
                        alignment: Alignment.topLeft,
                      ),

                      Align(
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 20,top: 30),
                          child: RatingStar(
                            rating: destination.ratings,
                            widthOfRating: MediaQuery.of(context).size.width*0.35,
                            heightOfRating: MediaQuery.of(context).size.height*0.05,
                          ),
                        ),
                        alignment: Alignment.topRight,
                      )
                    ],
                  ),
                  
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 40),
                    child: Text(destination.details,style: TextStyle(fontSize: 15,color: Colors.black),),
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
            ),
          )

        ],
      ),
    );
  }
}
