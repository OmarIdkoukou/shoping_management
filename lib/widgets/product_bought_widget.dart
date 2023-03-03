import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../constant/colors.dart';
import '../constant/dimentions.dart';
import '../utilites/app_config.dart';

Widget buildProductBoughtWidget({
  required String productName,
  required bool isDown,
  required double price,
  String? quantity,
  String? brandName,
  required double h,
  required double w,
  bool withArrow = false,
  bool withoutQuantity = false,
}) =>
    Container(
      height: h * 0.1,
      width: w*0.75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBorderRadius + 3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
        child: Center(
          child: ListTile(
              dense: quantity != "" ? false : true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: quantity != "" ? 0 : 2),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: quantity == "" ? 18.sp : 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    quantity ?? "",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: withArrow
                              ? Icon(
                                  isDown
                                      ? Icons.arrow_downward_outlined
                                      : Icons.arrow_upward_outlined,
                                  size: 15,
                                  color: isDown
                                      ? AppColors.kGreen
                                      : AppColors.kRed,
                                )
                              : const SizedBox.shrink(),
                        ),
                        TextSpan(
                          text: "$price${AppConfig.appCurrency}",
                          style: TextStyle(
                              color: isDown
                                  ? withArrow
                                      ? AppColors.kGreen
                                      : AppColors.primaryColor
                                  : AppColors.kRed,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   "$price${AppConfig.appCurrency}",
                  //   style: TextStyle(
                  //       color: isDown
                  //           ? withArrow
                  //               ? AppColors.kGreen
                  //               : AppColors.primaryColor
                  //           : AppColors.kRed,
                  //       fontSize: 16.sp,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  Text(
                    "Walmart: ${brandName ?? ""}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              )
              // subtitle:
              ),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Text(
        //           !withoutQuantity ? "\n$productName" : productName,
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 16.sp,
        //               fontWeight: FontWeight.bold),
        //         ),
        //         Row(
        //           children: [
        //             withArrow
        //                 ? Icon(
        //                     isDown
        //                         ? Icons.arrow_downward_outlined
        //                         : Icons.arrow_upward_outlined,
        //                     size: 15,
        //                     color: isDown ? AppColors.kGreen : AppColors.kRed,
        //                   )
        //                 : const SizedBox.shrink(),
        //             Text(
        //               "$price${AppConfig.appCurrency}",
        //               style: TextStyle(
        //                   color: isDown
        //                       ? withArrow
        //                           ? AppColors.kGreen
        //                           : AppColors.primaryColor
        //                       : AppColors.kRed,
        //                   fontSize: 16.sp,
        //                   fontWeight: FontWeight.bold),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Text(
        //           quantity ?? "",
        //           style: TextStyle(
        //               color: Colors.grey,
        //               fontSize: 16.sp,
        //               fontWeight: FontWeight.bold),
        //         ),
        //         Text(
        //           "Walmart: ${brandName ?? ""}",
        //           style: TextStyle(
        //             color: Colors.grey,
        //             fontSize: 14.sp,
        //           ),
        //         ),
        //       ],
        //     )
        //   ],
        // ),
      ),
    );
