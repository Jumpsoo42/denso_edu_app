
// domaain/paath
import 'package:denso_edu_app/screen/home_screen.dart';
import 'package:denso_edu_app/screen/view_edu_info.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    //메인 화면
    GoRoute(
        path: '/',
        builder: (context, state) {
          return HomeScreen();
        },
        routes: [
          //미사용 -  개발 참고용
          GoRoute(
              path: 'view_edu',
              builder: (context, state) {
                return ViewEduInfo();
              }),
          ]
    ),
  ],
);
