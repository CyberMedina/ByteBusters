import '../models/tilecontent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';
import 'package:smartraincontrol/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TilecontentItemWidget extends StatelessWidget {
  TilecontentItemWidget(
    this.tilecontentItemModelObj, {
    Key? key,
    this.onTapAddPipeline,
  }) : super(
          key: key,
        );

  TilecontentItemModel tilecontentItemModelObj;

  VoidCallback? onTapAddPipeline;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_smart_rain_electrov_lvula".tr,
              style: CustomTextStyles.titleMediumLightgreen400_2,
            ),
            SizedBox(height: 9.v),
            Row(
              children: [
                CustomIconButton(
                  height: 41.v,
                  width: 40.h,
                  padding: EdgeInsets.all(9.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgPipeline2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    tilecontentItemModelObj.idproducto!,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            CustomElevatedButton(
              height: 42.v,
              width: 174.h,
              text: "lbl_a_adir_tuber_a".tr,
              onTap: () {
                onTapAddPipeline?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
