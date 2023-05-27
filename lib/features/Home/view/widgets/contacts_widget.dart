import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/core/extensions/extensions.dart';

import '../../../../core/widgets/contacts_row_widget.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contacts',
          style: context.theme.textTheme.titleMedium,
        ),
        SizedBox(height: 32.h),
        ContactsRowWidget(
          suffixIcon: Icons.email,
          title: 'Email',
          value: 'ahmedmohamedah731@gmail.com',
          onPressedOnValue: () {},
        ),
        SizedBox(height: 16.h),
        ContactsRowWidget(
          suffixIcon: Icons.phone,
          title: 'Phone',
          value: '012345678997',
          onPressedOnValue: () {},
        ),
        SizedBox(height: 16.h),
        ContactsRowWidget(
          suffixIcon: FontAwesomeIcons.linkedin,
          title: 'LikedIn',
          value: 'ahmedmohamedah731@gmail.com',
          onPressedOnValue: () {},
        ),
        SizedBox(height: 16.h),
        ContactsRowWidget(
          suffixIcon: FontAwesomeIcons.githubAlt,
          title: 'Github',
          value: 'ahmedmohamedah731@gmail.com',
          onPressedOnValue: () {},
        ),
      ],
    );
  }
}
