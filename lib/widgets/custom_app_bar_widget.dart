import 'package:flutter/material.dart';
import 'package:shopping_managment/widgets/custom_app_bar_icon_widget.dart';

PreferredSizeWidget customAppBarWidget(
        {required BuildContext context,
        String? title,
        List<Widget>? actions,
        Color? backgroundColor}) =>
    AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      leading: customAppBarIconWidget(
          iconData: Icons.arrow_back_outlined,
          onTap: () {
            Navigator.of(context).pop();
          }),
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          title ?? "",
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      actions: actions,
    );
