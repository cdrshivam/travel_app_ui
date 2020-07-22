import 'package:flutter/material.dart';

import './widget/searchBar.dart';
import './widget/recommendedPlacesCard.dart';
import '../utils/destinationData.dart';
import '../model/destination_model.dart';
import '../model/guide_model.dart';
import '../utils/touristGuideData.dart';
import './widget/touristGuideCard.dart';



class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  List<DestinationModel> destinationList= getDestinationData();

  List<GuideModel> guideList=getTouristGuideData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        //-----------------App Bar-----------------
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black,size: 30),
          //leading: IconButton(icon: Icon(Icons.drag_handle,color: Colors.black,), onPressed: (){print("icon pressed");}),
        ),

        //-----------------------navigation drawer----------------------
        drawer: Drawer(),

        
        //-------------------------------body---------------------------
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              //-----------------explore text---------------------
              Container(
                margin: EdgeInsets.fromLTRB(30,10,30,0),
                child: Text(
                  "Explore",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    letterSpacing: 3,
                  ),
                ),
              ),

              //------------------search bar---------------------------
              SearchBar(),

              //-------------------recommended places text---------------
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Recommended Places',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                  ),
                ),
              ),


              //--------------horizontal list of recommended places------------------
              Container(
                height: MediaQuery.of(context).size.height*0.50,
                child: ListView.builder(
                  itemCount: destinationList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return RecommendedPlacesCard(
                      destination: destinationList[index],
                      widthOfCard: MediaQuery.of(context).size.width*0.60,
                      heightOfCard: MediaQuery.of(context).size.height*0.40,
                    );
                    },
                ),
              ),


              //--------------------tourist guide text----------------------------
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Our Tourist Guides',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.5,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              //--------------------------horizontal list of guides---------------------
              Container(
                height: MediaQuery.of(context).size.height*0.12,
                padding: EdgeInsets.only(right: 20),
                child: ListView.builder(
                  itemCount: guideList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return TouristGuideCard(
                      guide: guideList[index],
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
