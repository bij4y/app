import 'package:flutter/material.dart';

import 'form.dart';

class CustomFormField extends StatelessWidget {
  final String? title;
  final IconData? icon;
  const CustomFormField({
    this.title,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: TextForm.horizontalScreenPadding,
              vertical: TextForm.verticalscreenPadding),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "$title",
              prefixIcon: Icon(
                icon,
                // color: const Color(0xff1a2d40),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
