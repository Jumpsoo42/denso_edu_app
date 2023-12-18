import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';

class TabExamCard extends StatefulWidget {
  final String examPhase;
  final String examAnswerList;

  const TabExamCard({
    super.key,
    required this.examPhase,
    required this.examAnswerList,
  });

  @override
  State<TabExamCard> createState() => _TabExamCardState();
}

class _TabExamCardState extends State<TabExamCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.white,
    );

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: PRIMARY_COLOR,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.examPhase,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: PRIMARY_COLOR,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text("그렇다.", style: textStyle.copyWith(fontSize: 12, color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text("아니다.", style: textStyle.copyWith(fontSize: 12, color: Colors.black),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '다음',
                    style: textStyle.copyWith(
                      color: PRIMARY_COLOR4,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
