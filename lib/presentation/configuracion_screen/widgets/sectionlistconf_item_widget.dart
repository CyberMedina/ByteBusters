import '../models/sectionlistconf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';

// ignore: must_be_immutable
class SectionlistconfItemWidget extends StatelessWidget {
  SectionlistconfItemWidget(
    this.sectionlistconfItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SectionlistconfItemModel sectionlistconfItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 24.v),
              Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgSettingsBlueGray200,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_historial_de_acciones".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
