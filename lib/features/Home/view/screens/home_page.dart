import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants/app_padding.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../../core/widgets/footer_widget.dart';
import '../../../../core/widgets/sepration_title_with_button_widget.dart';
import '../widgets/intro_widget.dart';
import '../widgets/projects_part_widget.dart';
import '../widgets/skills_part_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: context.appWidth * 0.2,
          vertical: context.appHeight * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IntroWidget(),
          SizedBox(height: 32.h),
          const ProjectsWidget(),
          SizedBox(height: 32.h),
          const SkillsPartWidget(),
          SizedBox(height: 32.h),
          const FooterWidget(),
        ],
      ),
    );
  }
}
