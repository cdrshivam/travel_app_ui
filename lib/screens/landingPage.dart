import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './explorePage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/landing_page_wallpaper.jpg',
              alignment: Alignment.center,
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            
            
            Opacity(
              opacity: 0.9,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black]
                    ),
                ),
              ),
            ),


          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(35, 0, 25, 190),
              child: Text('Are you ready?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 3,
                          wordSpacing: 5,
                          fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
            ),
          ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(35, 0, 25, 125),
                child: Text('Plan your trip with us and enjoy the nature',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white70,
                    letterSpacing: 3,
                    wordSpacing: 5,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),


            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 30, 40),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExplorePage()),
                    );
                  },
                  child: Text(
                    'Lets start',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(25,15,25,15),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(2)
                      ),
                  ),
                
                ),
                
              ),
            ),




          ],
        ),
      ),
    );
  }
}
