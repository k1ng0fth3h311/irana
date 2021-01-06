import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Widgets/commen_appbar.dart';
import 'package:irana/styles.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final text =
      "ایرانا اولین دایره المعارف تصویری ایران است که هدف آن به نمایش گذاشتن زیبایی های کشورمان از طریق عکس های تهیه شده توسط اعضای این مجموعه ایرانی است اینجا دورهمی عاشقان و علاقه مندان سرزمین پرافتخار ایران است جایی که ما برآنیم زیبایی های ایران را برای همگان  به تصویر بکشیم";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CommenAppBar(
          text: "درباره ما",
        ),
        Padding(
          padding: usuallMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              height20,
              Text(
                text,
                textAlign: TextAlign.center,
                style: yekanMedium.copyWith(
                  fontSize: 14,
                  color: Color.fromRGBO(66, 80, 107, 1),
                ),
              ),
              height20,
              Image.asset(
                "${imagesFolder}about_us1.png",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
