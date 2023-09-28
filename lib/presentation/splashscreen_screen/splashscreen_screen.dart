import 'bloc/splashscreen_bloc.dart';
import 'models/splashscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashscreenBloc>(
        create: (context) => SplashscreenBloc(
            SplashscreenState(splashscreenModelObj: SplashscreenModel()))
          ..add(SplashscreenInitialEvent()),
        child: SplashscreenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashscreenBloc, SplashscreenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        SizedBox(
                            height: 718.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgHomewaterservice,
                                      height: 418.v,
                                      width: 360.h,
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 118.v)),
                                  CustomElevatedButton(
                                      width: 312.h,
                                      text: "lbl_iniciemos".tr,
                                      rightIcon: Container(
                                          margin: EdgeInsets.only(left: 30.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright)),
                                      onTap: () {
                                        onTapIniciemos(context);
                                      },
                                      alignment: Alignment.bottomCenter),
                                  Opacity(
                                      opacity: 0.8,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse809,
                                          height: 184.v,
                                          width: 92.h,
                                          alignment: Alignment.bottomRight,
                                          margin:
                                              EdgeInsets.only(bottom: 55.v))),
                                  Opacity(
                                      opacity: 0.8,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse787,
                                          height: 318.v,
                                          width: 138.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(top: 31.v))),
                                  Opacity(
                                      opacity: 0.6,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse786stroke,
                                          height: 89.v,
                                          width: 125.h,
                                          radius: BorderRadius.only(
                                              topLeft: Radius.circular(86.h),
                                              topRight: Radius.circular(85.h),
                                              bottomLeft: Radius.circular(54.h),
                                              bottomRight:
                                                  Radius.circular(54.h)),
                                          alignment: Alignment.topRight))
                                ])),
                        SizedBox(height: 48.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse808,
                            height: 91.v,
                            width: 55.h)
                      ])))));
    });
  }

  /// Navigates to the iniciosesionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the iniciosesionScreen.
  onTapIniciemos(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iniciosesionScreen,
    );
  }
}
