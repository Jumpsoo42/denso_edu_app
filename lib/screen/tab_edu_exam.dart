import 'package:denso_edu_app/const/colors.dart';
import 'package:denso_edu_app/const/tabs.dart';
import 'package:denso_edu_app/screen/tab_exam_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabEduExam extends StatefulWidget {
  const TabEduExam({super.key});

  @override
  State<TabEduExam> createState() => _TabEduExamState();
}

class _TabEduExamState extends State<TabEduExam> {
  final textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.white,
  );

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: TABS_EXAM.length,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                MAIN_TITLE,
                style: textStyle.copyWith(fontSize: 16),
              ),
            ),
            toolbarHeight: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: TabBar(
                indicatorColor: PRIMARY_COLOR4,
                indicatorWeight: 4.0,
                isScrollable: true,
                dividerHeight: 2,
                labelStyle: textStyle.copyWith(
                  color: PRIMARY_COLOR4,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: textStyle.copyWith(
                  color: PRIMARY_COLOR3,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w100,
                ),
                tabs: TABS_EXAM
                    .map(
                      (e) => Tab(
                        icon: Icon(
                          e.icon,
                        ),
                        child: Text(
                          e.label,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          body: TabBarView(
            children: [
              TabExamCard(
                examPhase: '1. 회사를 벗어난 회식장소나 온라인공간에서의 직장내 괴롭힘은 성립하지 않는다.',
                examAnswerList: '예#아니오',
              ),
              TabExamCard(
                examPhase: '2. DNKR소속의 관리자 또는 근로자가 용역, 아르바이트 등을 괴롭히는 것도 직장내 괴롭힘에 해당한다.',
                examAnswerList: '예#아니오',
              ),
              TabExamCard(
                examPhase: '3. 회사를 벗어난 회식장소나 온라인공간에서의 직장내 괴롭힘은 성립하지 않는다.',
                examAnswerList: '예#아니오',
              ),
              TabExamCard(
                examPhase: '4. 회사를 벗어난 회식장소나 온라인공간에서의 직장내 괴롭힘은 성립하지 않는다.',
                examAnswerList: '예#아니오',
              ),
              TabExamCard(
                examPhase: '5. 회사를 벗어난 회식장소나 온라인공간에서의 직장내 괴롭힘은 성립하지 않는다.',
                examAnswerList: '예#아니오',
              ),
              TabExamCard(
                examPhase: '6. 회사를 벗어난 회식장소나 온라인공간에서의 직장내 괴롭힘은 성립하지 않는다.',
                examAnswerList: '예#아니오',
              ),
              TabExamCard(
                examPhase: '7. 회사를 벗어난 회식장소나 온라인공간에서의 직장내 괴롭힘은 성립하지 않는다.',
                examAnswerList: '예#아니오',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
