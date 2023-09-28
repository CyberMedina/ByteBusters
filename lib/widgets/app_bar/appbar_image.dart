import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.customBorderTL86,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.6,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
            height: 24.adaptSize,
            width: 24.adaptSize,
            fit: BoxFit.contain,
            radius: BorderRadius.only(
              topLeft: Radius.circular(86.h),
              topRight: Radius.circular(85.h),
              bottomLeft: Radius.circular(54.h),
              bottomRight: Radius.circular(54.h),
            ),
          ),
        ),
      ),
    );
  }
}
