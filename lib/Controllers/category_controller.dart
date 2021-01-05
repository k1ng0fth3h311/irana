import 'package:irana/Constants.dart';
import 'package:irana/Models/category_model.dart';

List<CategoryModel> _sliderItems = [
  CategoryModel(image: "${imagesFolder}jazebe.png", name: "جاذبه های طبیعی"),
  CategoryModel(image: "${imagesFolder}tarikh.png", name: "اماکن تاریخی"),
  CategoryModel(image: "${imagesFolder}jazebe.png", name: "جاذبه های طبیعی"),
  CategoryModel(image: "${imagesFolder}tarikh.png", name: "اماکن تاریخی"),
];

List<CategoryModel> getItemsList() {
  return _sliderItems;
}
