import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/widgets/custom_app_bar_icon_widget.dart';

PreferredSizeWidget customAppBarWidget(
        {required BuildContext context,
        String? title,
        List<Widget>? actions,
        Color? backgroundColor}) =>
    AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      centerTitle: false,
      scrolledUnderElevation: 0,
      title: Row(
        mainAxisAlignment:actions==null? MainAxisAlignment.start:MainAxisAlignment.spaceBetween,
        children: [
          customAppBarIconWidget(
              iconData: Icons.arrow_back_outlined,
              onTap: () {
                Navigator.of(context).pop();
              }),
          actions==null?2.h.toInt().width:const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title ?? "",
              style: const TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          actions==null?const SizedBox.shrink():actions.first
        ],
      ),

    );
