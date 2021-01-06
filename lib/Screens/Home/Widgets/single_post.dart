import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Screens/PhotoDetail/photo_detail.dart';
import 'package:irana/styles.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class SinglePost extends StatefulWidget {
  final int likesNo;
  final int viewsNo;
  final String userName;
  final String photoName;
  final String userImage;
  final String image;
  final tag;
  SinglePost(
      {this.likesNo,
      this.image,
      this.viewsNo,
      this.userName,
      this.photoName,
      @required this.tag,
      this.userImage});
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onClickPost,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: widget.tag,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(0, 3),
                      spreadRadius: 1),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fill),
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _topLeftRow(),
                        _topRightRow(),
                      ],
                    ),
                    Text(
                      widget.photoName,
                      style: yekanHeavy.copyWith(fontSize: 11),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
              ),
            ),
          ),
          height20
        ],
      ),
    );
  }

  _topLeftRow() {
    return Row(
      children: [
        Icon(
          Icons.favorite_outline,
          color: Colors.white,
          size: 10,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          widget.likesNo.toString().toPersianDigit(),
          style: yekanMedium.copyWith(fontSize: 11),
        ),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          "${imagesFolder}eye_icon.png",
          height: 10,
          fit: BoxFit.fill,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          widget.likesNo.toString().toPersianDigit(),
          style: yekanMedium.copyWith(fontSize: 11),
        ),
      ],
    );
  }

  _topRightRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      textDirection: TextDirection.rtl,
      children: [
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          height: 20,
          child: Image.asset(
            widget.userImage,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          widget.userName,
          style: yekanHeavy.copyWith(fontSize: 11),
        )
      ],
    );
  }

  _onClickPost() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PhotoDetails(
          image: widget.image,
          userImage: widget.userImage,
          tag: widget.tag,
        ),
      ),
    );
  }
}
