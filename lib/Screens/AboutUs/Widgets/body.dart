import 'package:flutter/material.dart';
import 'package:irana/Constants.dart';
import 'package:irana/Widgets/common_appbar.dart';
import 'package:irana/styles.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final String text =
      "ایرانا اولین دایره المعارف تصویری ایران است که هدف آن به نمایش گذاشتن زیبایی های کشورمان از طریق عکس های تهیه شده توسط اعضای این مجموعه ایرانی است اینجا دورهمی عاشقان و علاقه مندان سرزمین پرافتخار ایران است جایی که ما برآنیم زیبایی های ایران را برای همگان  به تصویر بکشیم";
  final String text2 =
      "اعضا(مشارکت کننده) ایرانا همه افرادی هستند که با عضویت در وبسایت مالک یه پروفایل اختصاصی به نام خود میگردند تا عکس های تحت مالکیت خود را منتشر کنند و در صورت تمایل و وجود تقاضا به فروش برساند کلیه قوانین ایرانا منطبق با قوانین جمهوری اسلامی ،قانون تجارت الکترونیک و قانون حمایت از حقوق مصرف کننده است و متعاقبا مشارکت کنندگان نیز موظف به رعایت این قوانین می باشند\n بدیهی است که ارسال اطلاعات،چه به صورت حضوری،تلفنی و یا از طریق اینترنت همیشه با خطر افشاء مواجه است و هیچ سامانه ای دارای امنیت کامل نیست از اینرو ایرانا مسئولیتی در قبال نواقص امنیت فناوری نداشته و هیچ گونه تعهدی در خصوص جبران خسارت فعلی یا آنی ندارد";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonAppBar(
            text: "درباره ما",
          ),
          _body(),
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          height20,
          _text(text),
          height20,
          _firstImage(),
          height20,
          _text(text2),
          height20,
          _secondImage(),
          height20
        ],
      ),
    );
  }

  Widget _firstImage() {
    return Material(
      elevation: 5,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "${imagesFolder}about_us1.png",
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _secondImage() {
    return Material(
      elevation: 5,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "${imagesFolder}about_us2.png",
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _text(text) {
    return Text(
      text,
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      style: yekanMedium.copyWith(
        fontSize: 16,
        color: Color.fromRGBO(66, 80, 107, 1),
      ),
    );
  }
}
