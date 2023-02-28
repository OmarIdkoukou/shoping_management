import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/screens/signup_screen.dart';
import '../constant/dimentions.dart';
import '../constant/image_path.dart';
import '../constant/colors.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/general_button.dart';
import 'create_new_product_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            AppColors.secondaryColor,
            AppColors.primaryColor,
          ])),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (h * 0.1).toInt().height,
              FadeInDown(
                delay: const Duration(milliseconds: 100),
                child: Container(
                  height: h * 0.25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImagePath.onlineShoppingImage),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              FadeInDown(
                  delay: const Duration(milliseconds: 500),
                  child: buildCustomTextWidget(hintText: "My Email is ...")),
              18.height,
              FadeInDown(
                  delay: const Duration(milliseconds: 650),
                  child: buildCustomTextWidget(hintText: "My password is ...")),
              20.height,
              FadeInDown(
                delay: const Duration(milliseconds: 700),
                child: generalButton(
                    onTap: () {
                      const CreateNewProductScreen().launch(
                        context,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    w: w,
                    h: 6.5.h,
                    name: "Sign In ",
                    fontSize: 17.sp,
                    colors: Colors.white,
                    textColor: AppColors.primaryColor,
                    borderRadius: kBorderRadius),
              ),
              FadeInDown(
                delay: const Duration(milliseconds: 1000),
                child: generalButton(
                    w: w,
                    h: 6.5.h,
                    name: "Sign Up ",
                    fontSize: 17.sp,
                    colors: Colors.transparent,
                    textColor: Colors.white,
                    borderRadius: kBorderRadius,
                    onTap: () {
                      const SignupScreen().launch(
                        context,
                        isNewTask: false,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
