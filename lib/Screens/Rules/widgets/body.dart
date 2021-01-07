import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:irana/Widgets/common_appbar.dart';
import 'package:irana/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final String text = "";
  final String text2 =
      "اعضا(مشارکت کننده) ایرانا همه افرادی هستند که با عضویت در وبسایت مالک یه پروفایل اختصاصی به نام خود میگردند تا عکس های تحت مالکیت خود را منتشر کنند و در صورت تمایل و وجود تقاضا به فروش برساند کلیه قوانین ایرانا منطبق با قوانین جمهوری اسلامی ،قانون تجارت الکترونیک و قانون حمایت از حقوق مصرف کننده است و متعاقبا مشارکت کنندگان نیز موظف به رعایت این قوانین می باشند\n بدیهی است که ارسال اطلاعات،چه به صورت حضوری،تلفنی و یا از طریق اینترنت همیشه با خطر افشاء مواجه است و هیچ سامانه ای دارای امنیت کامل نیست از اینرو ایرانا مسئولیتی در قبال نواقص امنیت فناوری نداشته و هیچ گونه تعهدی در خصوص جبران خسارت فعلی یا آنی ندارد";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonAppBar(
          text: "قوانین",
        ),
        height20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "ایرانا نام تجاری وب سایت  ",
                      style: yekanMedium.copyWith(
                        fontSize: 16,
                        color: Color.fromRGBO(66, 80, 107, 1),
                      ),
                    ),
                    TextSpan(
                      text: "irana.photos ",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          var url = "https://irana.photos/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw "لطفا دوباره تلاش کنید";
                          }
                        },
                      style: yekanMedium.copyWith(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        color: Color.fromRGBO(11, 141, 252, 1),
                      ),
                    ),
                    TextSpan(
                      text:
                          "است که به نمایش عکس هایی با موضوع ایران میپردازد و تمامی حقوق آن متعلق به مالک وب سایت می باشد",
                      style: yekanMedium.copyWith(
                        fontSize: 16,
                        color: Color.fromRGBO(66, 80, 107, 1),
                      ),
                    ),
                  ],
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
              Text(
                text2,
                style: yekanMedium.copyWith(
                  fontSize: 16,
                  color: Color.fromRGBO(66, 80, 107, 1),
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        )
      ],
    );
  }
}
