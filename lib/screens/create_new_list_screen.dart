import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shopping_managment/constant/app_data.dart';
import '../utilites/app_config.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/floating_action_button_widget.dart';

class CreateNewListScreen extends StatelessWidget {
  const CreateNewListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    List<TextEditingController> controller = List.generate(
        AppData.productData.length, (i) => TextEditingController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:customAppBarWidget(context: context,title: "Create new List"),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
        child: Column(
          children: AppData.productData
              .map<Widget>(
                (e) => Padding(
              padding: EdgeInsets.symmetric(vertical: .015 * h),
              child: FadeInDown(
                duration: Duration(milliseconds: e["duration"]),
                child: buildCustomTextWidget(
                  hintText: e["hint"],
                  fillColor: Colors.grey.shade200.withOpacity(0.85),
                  hintColor: Colors.grey.shade300,
                  helperText: e["helperText"],
                  maxLength: e["maxLines"],
                  textEditingController: controller[e["id"]],
                ),
              ),
            ),
          )
              .toList(),
        ),
      ),
      floatingActionButton: buildFloatingActionButton(
        h: h,
        w: h,
        onTap: () {},
      ),
    );
  }
}
