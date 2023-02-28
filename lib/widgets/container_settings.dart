import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContainerSettings extends StatelessWidget {
  final String text;
  final Color color;
  final double h;
  final double w;
  const ContainerSettings(
      {Key? key,
      required this.text,
      required this.color,
      required this.h,
      required this.w})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.075 * h,
      width: 0.7 * w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: Text(
                text,
                style: TextStyle(color: color, fontSize: 18.sp),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
