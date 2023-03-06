import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/colors.dart';
import '../utilites/app_config.dart';
import 'linear_percent_indicator.dart';

Widget walmartWidget(
        {required double h,
        required bool withLinearPercentIndicator,
        Widget? child,
        double? verticalPadding,
        double? elevation,
        List<Color>? gradientColors}) =>
    Material(
      elevation: elevation ?? 15.0,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      shadowColor: AppColors.primaryColor,
      child: Container(
        height: h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.green,
          gradient: LinearGradient(
            colors: gradientColors ??
                [
                  AppColors.primaryColor,
                  AppColors.secondaryColor,
                ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 30.0, vertical: verticalPadding ?? 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  "My best list ever",
                  style: TextStyle(fontSize: 21.sp, color: Colors.white),
                ),
                dense: false,
                contentPadding: EdgeInsets.zero,
                subtitle: Text(
                  "7.December 2023  .  Walmart\n",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.kGrey?.withOpacity(0.7)),
                ),
                trailing: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              withLinearPercentIndicator
                  ? Expanded(
                      child: LinearPercentIndicator(
                        lineHeight: 11.0,
                        percent: 0.8,
                        barRadius: const Radius.circular(8),
                        backgroundColor: Colors.transparent,
                        progressColor: Colors.white,
                        curve: Curves.easeIn,
                        clipLinearGradient: true,
                        fillColor: Colors.white,
                        overWidget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "110${AppConfig.appCurrency}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.sp),
                              ),
                              Text(
                                "200${AppConfig.appCurrency}",
                                style: TextStyle(
                                    color: AppColors.kGrey?.withOpacity(0.5),
                                    fontSize: 16.sp),
                              )
                            ],
                          ),
                        ),
                        center: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      ),
                    )
                  : child!,
            ],
          ),
        ),
      ),
    );
