import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/constant/app_data.dart';
import 'package:shopping_managment/constant/colors.dart';
import 'package:shopping_managment/utilites/app_config.dart';
import 'package:shopping_managment/widgets/custom_app_bar_icon_widget.dart';
import 'package:shopping_managment/widgets/custom_app_bar_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../constant/dimentions.dart';
import '../widgets/product_bought_widget.dart';

class UpdateListScreen extends StatelessWidget {
  const UpdateListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.fillColor,
      appBar: customAppBarWidget(
          context: context,
          actions: [customAppBarIconWidget(iconData: Icons.more_vert_outlined)],
          backgroundColor: AppColors.fillColor),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 0.23 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "My best list ever \n",
                            style:
                                TextStyle(fontSize: 21.sp, color: Colors.white),
                          ),
                          TextSpan(
                            text: "7.December 2023 . Walmart\n",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: AppColors.kGrey?.withOpacity(0.7)),
                          ),
                        ],
                      ),
                    ),
                    (0.6.h).toInt().height,
                    Expanded(
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

                        // widgetIndicator:
                      ),
                    ),
                  ],
                ),
              ),
            ),
            (6.h).toInt().height,
            Text(
              "Products bought.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            (3.h).toInt().height,
            Expanded(
                child: ListView(
                    children: AppData.dummyProductList
                        .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildProductBoughtWidget(
                              h: h,
                              w: w,
                              productName: e["productName"],
                              price: e["price"],
                              isDown: e["isDown"],
                              quantity: e["quantity"],
                              brandName: e["brandName"]),
                        ))
                        .toList()
                    // [
                    //   buildProductBoughtWidget(
                    //     h: h,
                    //     w: w,
                    //     price: 2.55,
                    //     productName: "Oat Milk.",
                    //     isDown: true,
                    //     quantity: "1L",
                    //     brandName: "Nesltee",
                    //   ),
                    // ],
                    ))
          ],
        ),
      ),
    );
  }
}
