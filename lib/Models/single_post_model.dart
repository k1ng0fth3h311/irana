class SinglePostModel {
  final int likesNo;
  final int viewsNo;
  final String userName;
  final String photoName;
  final String userImage;
  final String image;

  SinglePostModel(
      {this.likesNo,
      this.image,
      this.viewsNo,
      this.userName,
      this.photoName,
      this.userImage});
  getLikesNo() {
    return likesNo;
  }

  getViewsNo() {
    return viewsNo;
  }

  getUserName() {
    return userName;
  }

  getPhotoName() {
    return photoName;
  }

  getUserImage() {
    return userImage;
  }

  getImage() {
    return image;
  }
}
