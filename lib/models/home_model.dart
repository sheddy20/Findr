import 'package:mhapy/models/stories_model.dart';

class HomeModel {
  final StoriesModel profile;
  final String imageUrl;
  final String iconData;
  final String userName;

  HomeModel({
    this.profile,
    this.imageUrl,
    this.iconData,
    this.userName,
  });
}

final StoriesModel newUser = StoriesModel(
  name: "Saleah",
  imageUrl: "Asset/sa7.jpg",
  isOnline: true,
  hasStory: false,
);

final StoriesModel newUser1 = StoriesModel(
  name: "Maya",
  imageUrl: "Asset/sa1.jpg",
  isOnline: false,
  hasStory: true,
);

final StoriesModel newUser2 = StoriesModel(
  name: "Julia",
  imageUrl: "Asset/sa3.jpg",
  isOnline: true,
  hasStory: false,
);

final StoriesModel newUser3 = StoriesModel(
  name: "Saleah",
  imageUrl: "Asset/sa4.jpg",
  isOnline: false,
  hasStory: true,
);
