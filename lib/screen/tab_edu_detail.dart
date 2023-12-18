import 'package:denso_edu_app/component/default_readonly_container.dart';
import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';

class TabEduDetail extends StatefulWidget {
  const TabEduDetail({super.key});

  @override
  State<TabEduDetail> createState() => _TabEduDetailState();
}

class _TabEduDetailState extends State<TabEduDetail> {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.white,
    );

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                SizedBox(height: 6,),
                Expanded(
                  child: Container(
                    height: 30.0,
                    alignment: Alignment.center,                  color: PRIMARY_COLOR3,
                    child: Text(
                      '교육개요',
                      style: textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: [
              DefaultContainerText(
                alignment: Alignment.center,
                text: '교육명',
              ),
              Expanded(
                child: DefaultContainerText(
                  text: '2023년 직장내 괴롭힘 예방 교육',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              DefaultContainerText(
                alignment: Alignment.center,
                text: '교육기간',
              ),
              Expanded(
                child: DefaultContainerText(
                  text: '2023-12-01 ~ 2023-12-31',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            children: [
              DefaultContainerText(
                alignment: Alignment.center,
                text: '교육강사',
              ),
              Expanded(
                child: DefaultContainerText(
                  text: '홍길동',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            children: [
              DefaultContainerText(
                alignment: Alignment.center,
                text: '교육시간',
              ),
              Expanded(
                child: DefaultContainerText(
                  text: '10분',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            children: [
              DefaultContainerText(
                alignment: Alignment.center,
                text: '교육자료 다운로드',
              ),
              Expanded(
                child: DefaultContainerText(
                  text: '직장내 괴롭힘 예방 교육자료.pdf',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 30.0,
                    alignment: Alignment.center,
                    color: PRIMARY_COLOR3,
                    child: Text(
                      '교육내용',
                      style: textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Container(
                    width: MediaQuery.of(context).size.width-8,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: PRIMARY_COLOR,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    child: Text(
                      '교육내용 : 직장내 괴롭힘 예방 \r\n교육방법 : 상기 첨부의 “직장내 괴롭힘 예방 교육자료.pdf” 파일을 읽고,' +
                          '수강내용 확인을 위한 문제에 응답 후 제출 버튼 클릭',
                      textAlign: TextAlign.center,
                      style: textStyle.copyWith(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Expanded(
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
            ],
          ),
        ],
      ),
    );
  }
}
