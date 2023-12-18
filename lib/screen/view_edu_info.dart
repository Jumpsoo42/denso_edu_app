import 'package:denso_edu_app/component/default_readonly_container.dart';
import 'package:denso_edu_app/const/colors.dart';
import 'package:denso_edu_app/const/tabs.dart';
import 'package:denso_edu_app/screen/tab_edu_detail.dart';
import 'package:denso_edu_app/screen/tab_edu_exam.dart';
import 'package:denso_edu_app/screen/tab_edu_sign.dart';
import 'package:denso_edu_app/screen/tab_edu_video.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewEduInfo extends StatefulWidget {
  const ViewEduInfo({super.key});

  @override
  State<ViewEduInfo> createState() => _ViewEduInfoState();
}

class _ViewEduInfoState extends State<ViewEduInfo> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.white,
    );

    return DefaultTabController(
      length: TABS.length,
      child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                MAIN_TITLE,
                style: textStyle.copyWith(fontSize: 18),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Column(
                children: [
                  Container(color:PRIMARY_COLOR3, height: 1,),
                  TabBar(
                    indicatorColor: PRIMARY_COLOR3,
                    indicatorWeight: 4.0,
                    isScrollable: false,
                    labelStyle: textStyle.copyWith(
                      color: PRIMARY_COLOR3,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelStyle: textStyle.copyWith(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100,
                    ),
                    tabs: TABS
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
                ],
              ),
            ),
            backgroundColor: PRIMARY_COLOR4,
            automaticallyImplyLeading: false,
          ),
          body: TabBarView(
            children: [
              TabEduDetail(),
              TabEduVideo(),
              TabEduExam(),
              TabEduSign(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: PRIMARY_COLOR2,
            selectedItemColor: PRIMARY_COLOR4,
            unselectedItemColor: PRIMARY_COLOR4,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            // type: BottomNavigationBarType.shifting,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
              // 이전
              if (index == 0) {
              } else if (index == 1) {
                context.go('/');
              } else if (index == 2) {
                context.go('/view_edu');
              } else if (index == 3) {}
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back),
                label: '이전',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add),
                label: '교육',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login_outlined),
                label: '나가기',
              ),
            ],
          )),
    );
  }
}
