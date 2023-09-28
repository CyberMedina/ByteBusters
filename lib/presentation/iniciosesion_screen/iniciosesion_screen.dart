import 'bloc/iniciosesion_bloc.dart';
import 'models/iniciosesion_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_image.dart';
import 'package:smartraincontrol/widgets/app_bar/custom_app_bar.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';
import 'package:smartraincontrol/widgets/custom_text_form_field.dart';

class IniciosesionScreen extends StatelessWidget {
  const IniciosesionScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IniciosesionBloc>(
        create: (context) => IniciosesionBloc(
            IniciosesionState(iniciosesionModelObj: IniciosesionModel()))
          ..add(IniciosesionInitialEvent()),
        child: IniciosesionScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 122.v,
                leadingWidth: double.maxFinite,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgEllipse786strokeCyan200,
                    margin: EdgeInsets.only(right: 251.h)),
                centerTitle: true,
                title: Padding(
                    padding: EdgeInsets.only(top: 59.v, bottom: 21.v),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_bien".tr,
                              style: CustomTextStyles.headlineLargeBluegray900),
                          TextSpan(
                              text: "lbl_venido".tr,
                              style: theme.textTheme.headlineLarge)
                        ]),
                        textAlign: TextAlign.left))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 33.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text("msg_correo_el_ctronico".tr,
                                  style: theme.textTheme.labelLarge))),
                      BlocSelector<IniciosesionBloc, IniciosesionState,
                              TextEditingController?>(
                          selector: (state) => state.checkmarkController,
                          builder: (context, checkmarkController) {
                            return CustomTextFormField(
                                controller: checkmarkController,
                                margin: EdgeInsets.only(
                                    left: 27.h, top: 4.v, right: 21.h),
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        16.h, 15.v, 30.h, 15.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 48.v));
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 27.h, top: 43.v),
                              child: Text("lbl_contrase_a".tr,
                                  style: theme.textTheme.labelLarge))),
                      BlocBuilder<IniciosesionBloc, IniciosesionState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            controller: state.inputController,
                            margin: EdgeInsets.only(
                                left: 27.h, top: 4.v, right: 21.h),
                            textInputAction: TextInputAction.done,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<IniciosesionBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(14.h)),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword
                                            ? ImageConstant.imgInput
                                            : ImageConstant.imgInput))),
                            suffixConstraints: BoxConstraints(maxHeight: 48.v),
                            obscureText: state.isShowPassword);
                      }),
                      SizedBox(height: 44.v),
                      Text("msg_olvidaste_t_contrase_a".tr,
                          style: CustomTextStyles.labelLargeLightgreen400),
                      SizedBox(height: 93.v),
                      SizedBox(
                          height: 60.v,
                          width: 312.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBtnshadow,
                                height: 20.v,
                                width: 240.h,
                                radius: BorderRadius.circular(10.h),
                                alignment: Alignment.bottomCenter),
                            CustomElevatedButton(
                                width: 312.h,
                                text: "lbl_iniciar_sesi_n".tr,
                                rightIcon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowright)),
                                onTap: () {
                                  onTapIniciarsesin(context);
                                },
                                alignment: Alignment.topCenter)
                          ])),
                      SizedBox(height: 33.v),
                      SizedBox(
                          height: 260.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 22.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgOr,
                                                  height: 1.v,
                                                  width: 315.h),
                                              SizedBox(height: 22.v),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtNotienesunacuenta(
                                                        context);
                                                  },
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "msg_no_tienes_una_cuenta2"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .labelLargeBluegray900_1),
                                                        TextSpan(
                                                            text:
                                                                "lbl_registrate"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .labelLargeLightgreen400_1)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse810,
                                    height: 91.v,
                                    width: 58.h,
                                    alignment: Alignment.bottomRight),
                                Opacity(
                                    opacity: 0.8,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse787,
                                        height: 192.v,
                                        width: 95.h,
                                        alignment: Alignment.centerLeft))
                              ]))
                    ])))));
  }

  /// Navigates to the inicioprincipalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioprincipalScreen.
  onTapIniciarsesin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioprincipalScreen,
    );
  }

  /// Navigates to the crearcuentaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the crearcuentaScreen.
  onTapTxtNotienesunacuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.crearcuentaScreen,
    );
  }
}
