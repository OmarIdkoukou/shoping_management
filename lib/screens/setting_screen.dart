import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/colors.dart';
import '../widgets/container_settings.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.grey.shade300,
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (0.04 * h).toInt().height,
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
                child: Text(
                  'Settings.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '23,December 2023',
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              SizedBox(height: 0.05 * h),
              ContainerSettings(
                text: 'Edit profile',
                color: Colors.grey,
                h: h,
                w: w,
              ),
              SizedBox(height: 0.01 * h),
              ContainerSettings(
                text: 'About us',
                color: Colors.grey,
                h: h,
                w: w,
              ),
              SizedBox(height: 0.01 * h),
              ContainerSettings(
                text: 'Upgrade to pro',
                color: Colors.grey,
                h: h,
                w: w,
              ),
              SizedBox(height: 0.01 * h),
              ContainerSettings(
                text: 'Sign out',
                color: const Color(0xffFF0048),
                h: h,
                w: w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
