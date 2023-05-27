import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/core/widgets/circle_photo_with_name_widget.dart';
import 'package:my_portfolio/core/widgets/footer_widget.dart';

import '../widgets/projects_screen_all_projects_widget.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: context.appWidth * 0.2,
            vertical: context.appHeight * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CirclePhotoWithNameWidget(
              name: 'Ahmed Mohamed',
              photoUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBbNSPYsM7A7dNjERy02PB583vIktszIwBaY7Jjxf1rfjHzQQoxXjdctFZItKJpHkIa0Y&usqp=CAU',
            ),
            SizedBox(height: 32.h),
            const ProjectsScreenAllProjectsWidget(),
            SizedBox(height: 32.h),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
