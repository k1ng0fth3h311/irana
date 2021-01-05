import 'package:irana/Constants.dart';
import 'package:irana/Models/best_photo_month_model.dart';

class BestPhotoMonthController {
  BestPhotoMonthModel bestPhotoMonthModel = BestPhotoMonthModel(photos: [
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
    "${imagesFolder}ax_bartar.png",
  ]);
  BestPhotoMonthModel getPhotos() {
    return bestPhotoMonthModel;
  }
}
