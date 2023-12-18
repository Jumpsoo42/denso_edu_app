import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';

class TabEduVideo extends StatefulWidget {
  const TabEduVideo({super.key});

  @override
  State<TabEduVideo> createState() => _TabEduVideoState();
}

class _TabEduVideoState extends State<TabEduVideo> {
  final textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 9,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 30.0,
                    alignment: Alignment.center,
                    color: PRIMARY_COLOR3,
                    child: Text(
                      '교육 영상',
                      style: textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4,bottom: 4),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: PRIMARY_COLOR3,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              PRIMARY_COLOR2,
                              PRIMARY_COLOR3,
                            ],
                          ),
                        ),
                        child: Image.asset('asset/image/logo.png')),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
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
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
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
            ),
          ],
        ),
      ],
    );
  }
}
