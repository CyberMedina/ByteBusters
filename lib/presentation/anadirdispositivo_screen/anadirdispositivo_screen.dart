import 'bloc/anadirdispositivo_bloc.dart';
import 'models/anadirdispositivo_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_image_1.dart';
import 'package:smartraincontrol/widgets/app_bar/custom_app_bar.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';
import 'package:smartraincontrol/widgets/custom_text_form_field.dart';

class AnadirdispositivoScreen extends StatelessWidget {
  const AnadirdispositivoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AnadirdispositivoBloc>(
        create: (context) => AnadirdispositivoBloc(AnadirdispositivoState(
            anadirdispositivoModelObj: AnadirdispositivoModel()))
          ..add(AnadirdispositivoInitialEvent()),
        child: AnadirdispositivoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 36.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgMaximize,
                    margin:
                        EdgeInsets.only(left: 12.h, top: 13.v, bottom: 18.v),
                    onTap: () {
                      onTapMaximizeone(context);
                    }),
                title: Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_a_adir".tr,
                              style: theme.textTheme.titleLarge),
                          TextSpan(
                              text: "lbl_dispositivo2".tr,
                              style: CustomTextStyles.titleLargeLightgreen600_1)
                        ]),
                        textAlign: TextAlign.center))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 20.h, top: 83.v, right: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_buscando".tr,
                                    style: CustomTextStyles
                                        .titleLargeLightgreen600),
                                CustomImageView(
                                    svgPath: ImageConstant.imgRefresh,
                                    height: 21.adaptSize,
                                    width: 21.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 9.h, top: 2.v, bottom: 4.v))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(top: 22.v),
                          child: Divider(endIndent: 8.h)),
                      Container(
                          width: 317.h,
                          margin: EdgeInsets.only(
                              top: 27.v, right: 3.h, bottom: 5.v),
                          padding: EdgeInsets.all(16.h),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("msg_smart_rain_arduino".tr,
                                    style: CustomTextStyles
                                        .titleMediumLightgreen400_2),
                                SizedBox(height: 9.v),
                                BlocSelector<
                                        AnadirdispositivoBloc,
                                        AnadirdispositivoState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.tilecontentoneController,
                                    builder:
                                        (context, tilecontentoneController) {
                                      return CustomTextFormField(
                                          width: 175.h,
                                          controller: tilecontentoneController,
                                          hintText: "msg_intensidad_115".tr,
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                              margin:
                                                  EdgeInsets.only(right: 16.h),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArduinouno1)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 33.v));
                                    }),
                                SizedBox(height: 10.v),
                                CustomElevatedButton(
                                    height: 42.v,
                                    width: 118.h,
                                    text: "lbl_conectar".tr,
                                    onTap: () {
                                      onTapConectar(context);
                                    })
                              ]))
                    ]))));
  }

  /// Navigates to the inicioprincipalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioprincipalScreen.
  onTapMaximizeone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioprincipalScreen,
    );
  }

  /// Navigates to the arduinoagregadoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the arduinoagregadoScreen.
  onTapConectar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.arduinoagregadoScreen,
    );
  }
}
