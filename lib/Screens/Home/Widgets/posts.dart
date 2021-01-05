import 'package:flutter/material.dart';
import 'package:irana/Controllers/single_post_controller.dart';
import 'package:irana/Screens/Home/Widgets/single_post.dart';

class Posts extends StatelessWidget {
  final List posts = getItemsList();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return SinglePost(
          tag: index,
          image: posts[index].getImage(),
          likesNo: posts[index].getLikesNo(),
          photoName: posts[index].getPhotoName(),
          userImage: posts[index].getUserImage(),
          userName: posts[index].getUserName(),
          viewsNo: posts[index].getViewsNo(),
        );
      },
    );
  }
}
