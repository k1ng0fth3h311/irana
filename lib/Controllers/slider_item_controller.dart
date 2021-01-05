import 'package:irana/Constants.dart';
import 'package:irana/Models/slider_item_model.dart';

List<SliderItemModel> _sliderItems = [
  SliderItemModel(image: "${imagesFolder}tehran.png", name: "تهران"),
  SliderItemModel(image: "${imagesFolder}isfahan.png", name: "اصفهان"),
  SliderItemModel(image: "${imagesFolder}mazandaran.png", name: "مازندران"),
  SliderItemModel(image: "${imagesFolder}shiraz.png", name: "شیراز"),
  SliderItemModel(image: "${imagesFolder}tehran.png", name: "تهران2"),
  SliderItemModel(image: "${imagesFolder}isfahan.png", name: "2اصفهان"),
  SliderItemModel(image: "${imagesFolder}mazandaran.png", name: "2مازندران"),
  SliderItemModel(image: "${imagesFolder}shiraz.png", name: "2شیراز"),
];
List<SliderItemModel> getItemsList() {
  return _sliderItems;
}
