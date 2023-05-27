import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/core/constants/app_radius.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';
import 'package:my_portfolio/core/routes/app_routes_names.dart';

import '../../../../core/widgets/default_button.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: AppRadius.extraLarge,
              backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBbNSPYsM7A7dNjERy02PB583vIktszIwBaY7Jjxf1rfjHzQQoxXjdctFZItKJpHkIa0Y&usqp=CAU',
              ),
            ),
            Row(
              children: [
                DefaultButton(buttonText: 'Download Cv', onPressed: () {}),
                SizedBox(width: 12.w),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.light_mode)),
              ],
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Text(
          "Hey, I’m John Smith.I'm a front-end developer & designer based in London, UK.",
          style: context.theme.textTheme.titleLarge,
        ),
        SizedBox(height: 16.h),
        Text(
          "I enjoy turning complex problems into simple, beautiful and intuitive designs. When I'm not coding, you'll find me cooking, gardening or playing with my lovely daughter.",
          style: context.theme.textTheme.labelSmall,
        ),
        SizedBox(height: 16.h),
        TextButton(
          onPressed: () {
            context.push(AppRoutesNames.contact);
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(0),
            ),
          ),
          child:
              Text('Get in touch →', style: context.theme.textTheme.labelSmall),
        ),
      ],
    );
  }
}
