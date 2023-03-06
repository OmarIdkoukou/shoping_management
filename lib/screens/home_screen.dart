import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopping_managment/constant/app_data.dart';
import 'package:shopping_managment/constant/colors.dart';
import 'package:shopping_managment/widgets/custom_text_field_widget.dart';
import 'package:shopping_managment/widgets/walmart_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/home_screen_header_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/my_list_widget.dart';
import '../widgets/product_bought_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0.0, -0.15),
        children: [
          Column(
            children: [
              Container(
                height: Device.height * 0.45,
                width: double.maxFinite,
                color: Colors.black,
                child: Column(
                  children: [
                    homeScreenHeaderWidget(context),
                    (0.05 * Device.height).toInt().height,
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: buildCustomTextWidget(
                          hintText: "I'm searching for ...",
                          fillColor: Colors.grey.shade900,
                          hintColor: Colors.grey.shade700,
                          verticalPadding: 20,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Icon(
                              CupertinoIcons.search,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              (Device.height * 0.17).toInt().height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My lists",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(
                      "Most recent",
                      style: TextStyle(
                        color: AppColors.kGrey,
                        fontSize: 18.sp,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(30),
                  children: AppData.homeDummyData
                      .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: myListWidget(
                    title: e["title"],
                            h: Device.height, isDown: e["isDown"], price: e["price"]),
                      ))
                      .toList(),
                ),
              )
            ],
          ),
          CarouselSlider(
            items: AppData.homeDummyData
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8),
                      child: walmartWidget(
                        gradientColors: e["colors"],
                        elevation: 5,
                        h: Device.height * 0.25,
                        verticalPadding: 10,
                        withLinearPercentIndicator: false,
                        child: Row(
                          children: [
                            Expanded(
                              child: customButtonWidget(
                                  balance: e["thisListBudget"],
                                  title: "This list budget"),
                            ),
                            20.width,
                            Expanded(
                              child: customButtonWidget(
                                  balance: e["lastListBudget"],
                                  title: "Last list budget"),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                aspectRatio: 1.8,
                viewportFraction: 0.92,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                initialPage: 0,
                enableInfiniteScroll: false,
                enlargeFactor: 0.5),
          ),
        ],
      ),
    );
  }
}
