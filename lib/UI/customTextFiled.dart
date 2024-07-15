import 'package:e_commerce_app/AppColors.dart';
import 'package:e_commerce_app/MyTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.h),
        hintText: 'What do you Search for?',
        hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: const Color.fromRGBO(6, 0, 79, .6)).copyWith(
          color: MyTheme.PrimaryLight
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.0),
          child: Image.asset('assets/images/car.png'),
        ),
        border: buildBaseBorder(),
        enabledBorder: buildBaseBorder(),
        focusedBorder: buildBaseBorder().copyWith(
            borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)),
      ),
    );
  }

  OutlineInputBorder buildBaseBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.r),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 1));
  }
}
