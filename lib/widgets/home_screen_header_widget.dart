import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/image_path.dart';

Widget homeScreenHeaderWidget(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        (MediaQuery.of(context).viewPadding.top - 20).toInt().height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp),
                ),
                Text(
                  "23 December 2023",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
              ],
            ),
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey.shade900,
              child: const CircleAvatar(
                radius: 28,
                foregroundImage: AssetImage(ImagePath.profileImage),
              ),
            ),
          ],
        ),
      ],
    ));
