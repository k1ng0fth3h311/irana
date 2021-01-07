class CategoryModel {
  final String name;
  final String image;
  final String wideImage;
  CategoryModel({this.image, this.name, this.wideImage});

  String getName() {
    return name;
  }

  String getImage() {
    return image;
  }

  String getWideImage() {
    return wideImage;
  }
}
