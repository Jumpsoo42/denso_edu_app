import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';

class EduCourseCard extends StatelessWidget {
  final int startDate;
  final int endDate;
  final String content;
  final Color color;

  const EduCourseCard({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: PRIMARY_COLOR,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(8.0),
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _Time(startDate: startDate, endDate: endDate),
              SizedBox(
                width: 18.0,
              ),
              _Content(content: content),
              _Category(color: color)
            ],
          ),
        ],
      ),
    );
  }
}

class _Time extends StatelessWidget {
  final int startDate;
  final int endDate;

  const _Time({
    super.key,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: PRIMARY_COLOR3,
      fontSize: DEFAULT_FONT_SIZE ,
    );

    final startDateString = startDate.toString().substring(0, 2) +
        '/' +
        startDate.toString().substring(2);
    final endDateString = endDate.toString().substring(0, 2) +
        '/' +
        endDate.toString().substring(2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$startDateString',
          style: textStyle,
        ),
        Text(
          '~ $endDateString',
          style: textStyle,
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final String content;

  const _Content({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          content,
          style: TextStyle(
            fontSize: DEFAULT_FONT_SIZE + 4,
          ),
        ),
      ),
    );
  }
}

class _Category extends StatelessWidget {
  final Color color;

  const _Category({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      width: 16.0,
      height: 16.0,
    );
  }
}
