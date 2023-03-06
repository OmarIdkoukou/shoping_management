import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/constant/app_data.dart';
import 'package:shopping_managment/constant/colors.dart';
import 'package:shopping_managment/utilites/app_config.dart';
import 'package:shopping_managment/widgets/custom_app_bar_icon_widget.dart';
import 'package:shopping_managment/widgets/custom_app_bar_widget.dart';
import '../widgets/floating_action_button_widget.dart';
import '../widgets/linear_percent_indicator.dart';
import '../widgets/product_bought_widget.dart';
import '../widgets/walmart_widget.dart';

class UpdateListScreen extends StatelessWidget {
  const UpdateListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBarWidget(
          context: context,
          actions: [customAppBarIconWidget(iconData: Icons.more_vert_outlined)],
          backgroundColor: AppColors.fillColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child:
                  walmartWidget(h: 0.23 * h, withLinearPercentIndicator: true),
            ),
            (6.h).toInt().height,
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Products bought.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            (1.h).toInt().height,
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: AppData.dummyProductList
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildProductBoughtWidget(
                              h: h,
                              productName: e["productName"],
                              price: e["price"],
                              isDown: e["isDown"],
                              quantity: e["quantity"],
                              brandName: e["brandName"]),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton:
          buildFloatingActionButton(h: h, w: h, iconData: Icons.add),
    );
  }
}
