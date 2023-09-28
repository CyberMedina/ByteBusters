import '../models/userprofilecard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilecardItemWidget extends StatelessWidget {
  UserprofilecardItemWidget(
    this.userprofilecardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilecardItemModel userprofilecardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: AppDecoration.outlineIndigo5001,
          child: Container(
            width: 120.h,
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillLightGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgUser,
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgPipeline1,
                              height: 41.adaptSize,
                              width: 41.adaptSize,
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          bottom: 20.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgClockCyan200,
                        height: 14.v,
                        width: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          userprofilecardItemModelObj.weeklyText!,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelMediumPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "lbl_humedad_60".tr,
                    style: CustomTextStyles.labelLargeBluegray900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 1.v,
                  ),
                  child: Text(
                    userprofilecardItemModelObj.mainText!,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargePrimary_1,
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    userprofilecardItemModelObj.distanceText!,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumPrimary_1,
                  ),
                ),
                SizedBox(height: 7.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
