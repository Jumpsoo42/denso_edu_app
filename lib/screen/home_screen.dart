import 'package:denso_edu_app/component/calendar.dart';
import 'package:denso_edu_app/component/edu_course_card.dart';
import 'package:denso_edu_app/component/today_banner.dart';
import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  int index = 1;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.white,
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            MAIN_TITLE,
            style: textStyle,
          ),
        ),
        backgroundColor: PRIMARY_COLOR4,
      ),
      body: SafeArea(
        child: Column(children: [
          Calendar(
            selectedDay: selectedDay,
            focusedDay: focusedDay,
            onDaySelected: onDaySelected,
          ),
          SizedBox(
            height: 8.0,
          ),
          TodayBanner(
            selectedDay: selectedDay,
          ),
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: 1,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 6.0);
                },
                itemBuilder: (context, index) {
                  return EduCourseCard(
                    startDate: 1201,
                    endDate: 1228,
                    content:
                        '2023년 직장내 괴롭힘 예방 교육',
                    color: PRIMARY_COLOR3,
                  );
                },
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: PRIMARY_COLOR2,
        selectedItemColor: PRIMARY_COLOR4,
        unselectedItemColor: PRIMARY_COLOR4,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
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
          } else if (index == 3) {
          }
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
      ),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }
}
