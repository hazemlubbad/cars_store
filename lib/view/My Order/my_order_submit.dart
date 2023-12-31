import 'package:cars_store/helper/light_theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderSubmitScreen extends StatelessWidget {
  const MyOrderSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 384.h,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: TextStyle(
                    fontSize: 14.sp, color: ColorHelper.secondryColorText),
              ),
              Text(
                "\$8.00",
                style: TextStyle(
                    fontSize: 14.sp, color: ColorHelper.secondryColorText),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorHelper.secondryColorText,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$126.00",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorHelper.secondryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 37.h, bottom: 13.h),
            child: Text(
              "Address",
              style: TextStyle(
                  fontSize: 14.sp, color: ColorHelper.secondryColorText),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  maxLines: 2,
                  "6360 Sunset Blvd, Los Angeles,\n CA 90028 United States",
                  style:
                      TextStyle(fontSize: 12.sp, color: ColorHelper.iconColor),
                ),
              ),
              Text(
                "Edit",
                style: TextStyle(
                    fontSize: 14.sp, color: ColorHelper.secondryColor),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 28.h,
              bottom: 13.h,
            ),
            child: Text(
              "Payment",
              style: TextStyle(
                  fontSize: 14.sp, color: ColorHelper.secondryColorText),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.payments),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "**** **** **** 3247",
                    style: TextStyle(
                        fontSize: 12.sp, color: ColorHelper.iconColor),
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: ColorHelper.iconColor,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.h),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 45.h,
                color: ColorHelper.secondryColor,
                textColor: Colors.white,
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 14.sp),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
