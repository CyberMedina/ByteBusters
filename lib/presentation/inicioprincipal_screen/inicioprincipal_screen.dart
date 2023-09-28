import 'bloc/inicioprincipal_bloc.dart';
import 'models/inicioprincipal_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_iconbutton.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_image_1.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_subtitle.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:smartraincontrol/widgets/app_bar/custom_app_bar.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';
import 'package:smartraincontrol/widgets/custom_text_form_field.dart';

class InicioprincipalScreen extends StatelessWidget {
  const InicioprincipalScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioprincipalBloc>(
        create: (context) => InicioprincipalBloc(InicioprincipalState(
            inicioprincipalModelObj: InicioprincipalModel()))
          ..add(InicioprincipalInitialEvent()),
        child: InicioprincipalScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 143.v,
                leadingWidth: 197.h,
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgHomewaterservice120x105,
                    margin: EdgeInsets.only(right: 92.h)),
                title: Container(
                    margin:
                        EdgeInsets.only(left: 75.h, top: 49.v, bottom: 28.v),
                    decoration: AppDecoration.column1,
                    child: Column(children: [
                      AppbarSubtitle1(
                          text: "lbl_bienvenido".tr,
                          margin: EdgeInsets.only(right: 32.h)),
                      AppbarSubtitle(
                          text: "lbl_jeremy_silva".tr,
                          margin: EdgeInsets.only(left: 18.h))
                    ])),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgLightbulb,
                      margin: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 40.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: theme.colorScheme.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Container(
                              height: 82.v,
                              width: 312.h,
                              decoration: AppDecoration.outlineIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 14.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconbreath,
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 5.v, bottom: 10.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.h),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_managua_25".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 7.v),
                                                        BlocSelector<
                                                                InicioprincipalBloc,
                                                                InicioprincipalState,
                                                                TextEditingController?>(
                                                            selector: (state) =>
                                                                state
                                                                    .replyController,
                                                            builder: (context,
                                                                replyController) {
                                                              return CustomTextFormField(
                                                                  width: 162.h,
                                                                  controller:
                                                                      replyController,
                                                                  hintText:
                                                                      "msg_humedad_en_managua"
                                                                          .tr,
                                                                  hintStyle:
                                                                      CustomTextStyles
                                                                          .labelLargeBluegray900,
                                                                  prefix: Container(
                                                                      margin: EdgeInsets.only(
                                                                          right: 8
                                                                              .h,
                                                                          bottom: 2
                                                                              .v),
                                                                      child: CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgReply)),
                                                                  prefixConstraints:
                                                                      BoxConstraints(
                                                                          maxHeight:
                                                                              18.v));
                                                            })
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 38.h,
                                                      top: 5.v,
                                                      bottom: 10.v),
                                                  child: SizedBox(
                                                      height: 32.adaptSize,
                                                      width: 32.adaptSize,
                                                      child:
                                                          CircularProgressIndicator(
                                                              value: 0.5)))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 14.v),
                                        decoration: AppDecoration.outlineIndigo
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconbreath,
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 10.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.h, top: 4.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_managua_25".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 7.v),
                                                        BlocSelector<
                                                                InicioprincipalBloc,
                                                                InicioprincipalState,
                                                                TextEditingController?>(
                                                            selector: (state) =>
                                                                state
                                                                    .replyoneController,
                                                            builder: (context,
                                                                replyoneController) {
                                                              return CustomTextFormField(
                                                                  width: 162.h,
                                                                  controller:
                                                                      replyoneController,
                                                                  hintText:
                                                                      "msg_humedad_en_managua"
                                                                          .tr,
                                                                  hintStyle:
                                                                      CustomTextStyles
                                                                          .labelLargeBluegray900,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  prefix: Container(
                                                                      margin: EdgeInsets.only(
                                                                          right: 8
                                                                              .h,
                                                                          bottom: 2
                                                                              .v),
                                                                      child: CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgReply)),
                                                                  prefixConstraints:
                                                                      BoxConstraints(
                                                                          maxHeight:
                                                                              18.v));
                                                            })
                                                      ])),
                                              Container(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 38.h,
                                                      top: 10.v,
                                                      bottom: 10.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "lbl_51".tr,
                                                                style: CustomTextStyles
                                                                    .labelMediumSemiBold)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgEllipse780,
                                                            height: 32.v,
                                                            width: 16.h)
                                                      ]))
                                            ])))
                              ]))),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 35.v),
                          child: Text("lbl_dispositivo".tr,
                              style: CustomTextStyles.titleLarge_1)),
                      Container(
                          width: 317.h,
                          margin: EdgeInsets.fromLTRB(4.h, 12.v, 5.h, 5.v),
                          padding: EdgeInsets.all(16.h),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 174.h,
                                    child: Text("msg_a_n_no_tienes_ning_n".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(height: 1.50))),
                                SizedBox(height: 5.v),
                                CustomElevatedButton(
                                    height: 33.v,
                                    width: 173.h,
                                    text: "msg_conectar_un_dispositivo".tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillLightGreenTL15,
                                    buttonTextStyle:
                                        CustomTextStyles.labelLargePrimary,
                                    onTap: () {
                                      onTapConectarun(context);
                                    })
                              ]))
                    ])),
            bottomNavigationBar: SizedBox(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.blueGray100)),
              SizedBox(height: 2.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgIcons,
                          height: 32.v,
                          width: 213.h),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("lbl_inicio".tr,
                                style: theme.textTheme.labelMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 31.h, top: 2.v),
                            child: Text("lbl_dispositivos".tr,
                                style: theme.textTheme.labelMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 35.h, bottom: 2.v),
                            child: Text("lbl_rutinas".tr,
                                style: theme.textTheme.labelMedium))
                      ])
                    ]),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, top: 11.v, bottom: 3.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgSettings,
                          height: 19.v,
                          width: 18.h),
                      SizedBox(height: 1.v),
                      Text("lbl_configuraci_n".tr,
                          style: theme.textTheme.labelMedium)
                    ]))
              ])
            ]))));
  }

  /// Navigates to the anadirdispositivoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the anadirdispositivoScreen.
  onTapConectarun(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.anadirdispositivoScreen,
    );
  }
}
