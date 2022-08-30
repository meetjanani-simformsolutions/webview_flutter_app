import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/responsive/responsive_grid.dart';
import 'package:webview_flutter_app/responsive/widgets.dart';
import 'package:go_router/go_router.dart';

import 'courses_data.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage();

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    List<Course> courses = Course.courses;
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[800],
        centerTitle: true,
        title: const AppBarTitle(),
        leading: ResponsiveVisibility(
          hiddenWhen: const [Condition.largerThan(name: TABLET)],
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          const ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: TABLET)],
            child: MenuTextButton(text: 'Courses'),
          ),
          const ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: TABLET)],
            child: MenuTextButton(text: 'About'),
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_unread_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            InkWell(
              onTap: (){
                context.pushNamed(Page1Screen.route);
              },
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15.0),
                children: [
                  ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    rowPadding: const EdgeInsets.all(30),
                    columnPadding: const EdgeInsets.all(30),
                    layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? ResponsiveRowColumnType.COLUMN
                        : ResponsiveRowColumnType.ROW,
                    children: [
                      ResponsiveRowColumnItem(
                          rowFlex: 1, child: CourseTile(course: courses[0])),
                      ResponsiveRowColumnItem(
                          rowFlex: 1, child: CourseTile(course: courses[1])),
                    ],
                  ),
                ],
              ),
            ),
            ResponsiveGridWidget(),
          ],
        ),
      ),
    );
  }
}
