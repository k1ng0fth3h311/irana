class SliderItemModel {
  String _image;
  String _name;

  SliderItemModel({image, name}) {
    _image = image;
    _name = name;
  }
  String getName() {
    return _name;
  }

  String getImage() {
    return _image;
  }
}
