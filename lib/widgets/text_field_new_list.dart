import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFieldNewList extends StatelessWidget {
  final String hint;
  final String text;
  final String? valid;

  const TextFieldNewList({
    Key? key,
    required this.hint,
    required this.text,
    this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 0.07 * h,
          width: .5 * w,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.9),
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey[300], fontSize: 15.sp),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: .01 * h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 0.028 * w,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            ),
            SizedBox(
              width: 0.02 * w,
            ),
            Text(valid!, style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
          ],
        ),
      ],
    );
  }
}
