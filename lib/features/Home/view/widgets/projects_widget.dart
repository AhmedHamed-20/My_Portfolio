import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants/app_padding.dart';
import 'package:my_portfolio/core/constants/app_radius.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/core/widgets/card_widget.dart';

import '../../../../core/widgets/sepration_title_with_button_widget.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SeprationTitleWithButtonWidget(
          buttonText: 'See all',
          onPressed: () {},
          title: 'Projects',
        ),
        SizedBox(height: 16.h),
        Column(
          children: List.generate(
              3,
              (index) => CardWidget(
                    title: 'Project1',
                    description: "description",
                    trailing: Container(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.background,
                        borderRadius: BorderRadius.circular(AppRadius.small),
                      ),
                      child: Text(
                        '2022',
                        style: context.theme.textTheme.labelSmall,
                      ),
                    ),
                    endDescriptionWidget: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(0),
                        ),
                      ),
                      child: Text(
                        'View -->',
                        style: context.theme.textTheme.labelSmall,
                      ),
                    ),
                  )),
        ),
      ],
    );
  }
}
