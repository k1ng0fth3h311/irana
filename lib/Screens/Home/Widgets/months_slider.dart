import 'package:flutter/material.dart';
import 'package:irana/Screens/Home/Widgets/month.dart';

class MonthsSlider extends StatefulWidget {
  final List<Month> months = [
    Month("فرودین", Colors.white),
    Month("اردیبهشت", Colors.white),
    Month("خرداد", Colors.white),
    Month("تیر", Colors.white),
    Month("مرداد", Colors.white),
    Month("شهریور", Colors.white),
    Month("مهر", Colors.white),
    Month("آبان", Colors.white),
    Month("آذر", Colors.white),
    Month("دی", Colors.white),
    Month("بهمن", Colors.white),
    Month("اسفندs", Colors.white)
  ];
  @override
  _MonthsSliderState createState() => _MonthsSliderState();
}

class _MonthsSliderState extends State<MonthsSlider> {
  int _lastIndex;
  @override
  void initState() {
    super.initState();
    _lastIndex = 0;

    widget.months[_lastIndex] =
        Month(widget.months[_lastIndex].text, Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.months.length,
        reverse: true,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => _onClickSliderItems(index),
            child: widget.months[index],
          );
        },
      ),
    );
  }

  _onClickSliderItems(index) {
    if (index == _lastIndex) {
      return;
    }
    setState(() {
      widget.months[index] = Month(widget.months[index].text, Colors.black);
      widget.months[_lastIndex] =
          Month(widget.months[_lastIndex].text, Colors.white);
      _lastIndex = index;
    });
  }
}
