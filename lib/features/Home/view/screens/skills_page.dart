import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants/app_padding.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/core/widgets/circle_photo_with_name_widget.dart';
import 'package:my_portfolio/core/widgets/footer_widget.dart';

import '../../../../core/widgets/skills_title_widget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: context.appWidth * 0.2,
                  vertical: context.appHeight * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CirclePhotoWithNameWidget(
                    name: 'Ahmed Mohamed',
                    photoUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBbNSPYsM7A7dNjERy02PB583vIktszIwBaY7Jjxf1rfjHzQQoxXjdctFZItKJpHkIa0Y&usqp=CAU',
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    'Skills',
                    style: context.theme.textTheme.titleMedium,
                  ),
                  Column(
                    children: List.generate(
                      5,
                      (index) => const Padding(
                        padding: EdgeInsets.all(AppPadding.p10),
                        child: SkillsTitleWidget(
                          title: 'Dart',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.appWidth * 0.2,
                vertical: context.appHeight * 0.08),
            child: const Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: FooterWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
