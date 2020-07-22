import '../model/destination_model.dart';

List<DestinationModel> getDestinationData(){

  String destinationDetails='Indonesia, officially the Republic of Indonesia, is a country in Southeast Asia and Oceania, between the Indian and Pacific oceans. It consists of more than seventeen thousand islands, including Sumatra, Java, Borneo, Sulawesi, and New Guinea.';

  List<DestinationModel> destinationList=List<DestinationModel>();
  DestinationModel destination;

  //1
  destination= new DestinationModel();
  destination.imageUrl='https://images.unsplash.com/photo-1537996194471-e657df975ab4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';
  destination.destinationName='Bali';
  destination.details=destinationDetails;
  destination.ratings=4;
  destinationList.add(destination);

  //2
  destination= new DestinationModel();
  destination.imageUrl='https://images.unsplash.com/photo-1592768356429-5b7e62acee81?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80';
  destination.destinationName='Indonasia';
  destination.ratings=3;
  destination.details=destinationDetails;
  destinationList.add(destination);

  //3
  destination= new DestinationModel();
  destination.imageUrl='https://images.unsplash.com/photo-1592326671738-d03831252c65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=696&q=80';
  destination.destinationName='London';
  destination.ratings=5;
  destination.details=destinationDetails;
  destinationList.add(destination);

  //4
  destination= new DestinationModel();
  destination.imageUrl='https://images.unsplash.com/photo-1592677298363-c2586b8cafde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80';
  destination.destinationName='Santa Cruz';
  destination.ratings=2;
  destination.details=destinationDetails;
  destinationList.add(destination);

  //5
  destination= new DestinationModel();
  destination.imageUrl='https://images.unsplash.com/photo-1592343369661-27fcf4e6a950?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80';
  destination.destinationName='Fifi';
  destination.ratings=5;
  destination.details=destinationDetails;
  destinationList.add(destination);


  return destinationList;

}