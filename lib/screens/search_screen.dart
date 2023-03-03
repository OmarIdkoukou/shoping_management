import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/constant/app_data.dart';
import 'package:shopping_managment/constant/colors.dart';
import 'package:shopping_managment/constant/image_path.dart';
import 'package:shopping_managment/widgets/custom_app_bar_widget.dart';

import '../widgets/custom_app_bar_icon_widget.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/floating_action_button_widget.dart';
import '../widgets/product_bought_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBarWidget(
        context: context,
        backgroundColor: AppColors.fillColor,
        actions: [customAppBarIconWidget(image: ImagePath.barcodeRead)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCustomTextWidget(
                hintColor: AppColors.kGrey,
                hintText: "I'm searching for ...",
                fillColor: AppColors.kGrey?.withOpacity(0.5),
                suffixIcon: Icon(
                  CupertinoIcons.search,
                  color: AppColors.kGrey,
                  size: 20,
                ),
              ),
              4.h.toInt().height,
              Text(
                "Suggestions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              2.h.toInt().height,
              Column(
                children: AppData.dummyProductList
                    .map<Widget>(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildProductBoughtWidget(
                          h: h,
                          w: w,
                          productName: e["productName"],
                          price:e["price"],
                          isDown: true,
                          withArrow: false,
                          quantity: "",
                          brandName: e["brandName"],
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: buildFloatingActionButton(
        h: h,
        w: h,

      ),
    );
  }
}
