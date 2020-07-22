import '../model/guide_model.dart';

List<GuideModel> getTouristGuideData(){
  List<GuideModel> guideList = List<GuideModel>();
  GuideModel guide;

  guide=new GuideModel();
  guide.imageUrl='https://pbs.twimg.com/media/DZotU1hW0AEDN5F.jpg';
  guide.name='Shivam';
  guideList.add(guide);

  guide=new GuideModel();
  guide.imageUrl='https://hairstyles.thehairstyler.com/hairstyle_views/front_view_images/8911/original/Brant-Daugherty.jpg';
  guide.name='Lakshay';
  guideList.add(guide);

  guide=new GuideModel();
  guide.imageUrl='https://media.npr.org/assets/img/2015/01/20/ap0710030200328_custom-8fea0ef913662a644e082b7f76962f5db4b61c7a-s800-c85.jpg';
  guide.name='Sandeep';
  guideList.add(guide);

  guide=new GuideModel();
  guide.imageUrl='https://pbs.twimg.com/profile_images/950815117448499200/XVFH6rjh_400x400.jpg';
  guide.name='Mehak';
  guideList.add(guide);

  guide=new GuideModel();
  guide.imageUrl='https://thetigertimes.files.wordpress.com/2014/09/garcia.jpg';
  guide.name='Ishaan';
  guideList.add(guide);

  guide=new GuideModel();
  guide.imageUrl='https://i1.sndcdn.com/avatars-000339084123-nag0p1-t500x500.jpg';
  guide.name='Janvi';
  guideList.add(guide);

  guide=new GuideModel();
  guide.imageUrl='https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/102516215/original/8fa2f06ee5c29c806bcb1cd28b8f5a6ac80e2a07/say-anything-you-want-to-random-people.jpeg';
  guide.name='Chetan';
  guideList.add(guide);

  return guideList;
}