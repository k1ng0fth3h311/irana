class BestPhotoMonthModel {
  BestPhotoMonthModel({this.photos});
  final List<String> photos;
  String getPhoto(int index) {
    return photos[index];
  }
}
