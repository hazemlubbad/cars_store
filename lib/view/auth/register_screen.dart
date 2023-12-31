import 'package:cars_store/customWidget/custom_material_button.dart';
import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:cars_store/view/main%20screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../customWidget/custom_text_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomTextForm(
                labelText: "Full name",
                suffixIcon: Icons.close,
                obscureText: false,
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextForm(
                      labelText: "E-mail",
                      suffixIcon: Icons.close,
                      obscureText: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: Text(
                        "Don't miss our latest promotions and updates",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: ColorHelper.iconColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: const CustomTextForm(
                  labelText: "password",
                  suffixIcon: Icons.close,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: const CustomTextForm(
                  labelText: "Confirm password",
                  suffixIcon: Icons.visibility,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: CustomMaterialButton(onPressed: () {
                  Get.off(const MainScreen());
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
