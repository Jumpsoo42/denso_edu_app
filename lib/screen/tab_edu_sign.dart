import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';

class TabEduSign extends StatefulWidget {
  const TabEduSign({super.key});

  @override
  State<TabEduSign> createState() => _TabEduSignState();
}

class _TabEduSignState extends State<TabEduSign> {
  final textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.white,
  );

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 30.0,
                  alignment: Alignment.center,
                  color: PRIMARY_COLOR3,
                  child: Text(
                    '동의서',
                    style: textStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('동의서 제목(xXxx'),
            ),
          ],
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
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
              child: Center(
                child: Text(
                  '교육내용 : 직장내 괴롭힘 예방 \r\n교육방법 : 상기 첨부의 “직장내 괴롭힘 예방 교육자료.pdf” 파일을 읽고,' +
                      '수강내용 확인을 위한 문제에 응답 후 제출 버튼 클릭',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
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
            Text("위의 내용에 동의합니다.", style: textStyle.copyWith(fontSize: 12, color: Colors.black),)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '완료',
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
