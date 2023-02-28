import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopping_managment/screens/create_new_list_screen.dart';
import '../utilites/app_config.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/floating_action_button_widget.dart';

class CreateNewProductScreen extends StatelessWidget {
  const CreateNewProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;
    List<TextEditingController> controller = List.generate(
        AppConfig.productData.length, (i) => TextEditingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: .06 * h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: h * .04,
                    width: w * .04,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(
                      Icons.arrow_back_outlined,
                      size: 16,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Create new product',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            (.05 * h).toInt().height,
            Column(
              children: AppConfig.productData
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
          ],
        ),
      ),
      floatingActionButton: buildFloatingActionButton(
          h: h,
          w: w,
          onTap: () {
            const CreateNewListScreen().launch(
              context,
              duration: const Duration(milliseconds: 300),
            );
          }),
    );
  }
}
