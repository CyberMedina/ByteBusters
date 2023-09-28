import 'bloc/crearcuenta_bloc.dart';
import 'models/crearcuenta_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_checkbox_button.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';
import 'package:smartraincontrol/widgets/custom_text_form_field.dart';

class CrearcuentaScreen extends StatelessWidget {
  const CrearcuentaScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CrearcuentaBloc>(
        create: (context) => CrearcuentaBloc(
            CrearcuentaState(crearcuentaModelObj: CrearcuentaModel()))
          ..add(CrearcuentaInitialEvent()),
        child: CrearcuentaScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: 353.v,
                              width: 336.h,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_nombre_completo".tr,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              SizedBox(height: 4.v),
                                              BlocSelector<
                                                      CrearcuentaBloc,
                                                      CrearcuentaState,
                                                      TextEditingController?>(
                                                  selector: (state) => state
                                                      .labelcontainerController,
                                                  builder: (context,
                                                      labelcontainerController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            labelcontainerController,
                                                        prefix: Container(
                                                            padding: EdgeInsets.fromLTRB(
                                                                16.h,
                                                                15.v,
                                                                30.h,
                                                                15.v),
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .gray50,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        14.h),
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .gray100,
                                                                    width:
                                                                        1.h)),
                                                            child: CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgLabelContainer)),
                                                        prefixConstraints:
                                                            BoxConstraints(
                                                                maxHeight: 48.v));
                                                  }),
                                              SizedBox(height: 12.v),
                                              Text("msg_correo_el_ctronico".tr,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              SizedBox(height: 4.v),
                                              BlocSelector<
                                                      CrearcuentaBloc,
                                                      CrearcuentaState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.checkmarkController,
                                                  builder: (context,
                                                      checkmarkController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            checkmarkController,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        prefix: Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    16.h,
                                                                    15.v,
                                                                    30.h,
                                                                    15.v),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark)),
                                                        prefixConstraints:
                                                            BoxConstraints(
                                                                maxHeight:
                                                                    48.v));
                                                  }),
                                              SizedBox(height: 13.v),
                                              Text("lbl_contrase_a".tr,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              SizedBox(height: 4.v),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgInput,
                                                  height: 48.v,
                                                  width: 312.h,
                                                  radius: BorderRadius.circular(
                                                      14.h))
                                            ])),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 59.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_crea_tu".tr,
                                                      style: CustomTextStyles
                                                          .headlineLargeBluegray900),
                                                  TextSpan(
                                                      text: "lbl_cuenta".tr,
                                                      style: theme.textTheme
                                                          .headlineLarge)
                                                ]),
                                                textAlign: TextAlign.left))),
                                    Opacity(
                                        opacity: 0.8,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse809,
                                            height: 139.v,
                                            width: 97.h,
                                            alignment: Alignment.topRight))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, top: 10.v, right: 33.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: 16.v,
                                        width: 15.h,
                                        margin: EdgeInsets.only(bottom: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("msg_t_contrase_a_debe".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 24.h, top: 8.v, right: 81.h),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: 16.v,
                                width: 15.h,
                                margin: EdgeInsets.only(bottom: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_debe_de_tener_mayusculas".tr,
                                    style: theme.textTheme.labelLarge))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 24.h, top: 8.v, right: 71.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: 16.v,
                                    width: 15.h,
                                    margin: EdgeInsets.only(bottom: 17.v)),
                                Expanded(
                                    child: Container(
                                        width: 240.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        child: Text("msg_debe_de_contener".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.labelLarge!
                                                .copyWith(height: 1.50))))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Divider(indent: 24.h, endIndent: 24.h))),
                      SizedBox(height: 20.v),
                      SizedBox(
                          height: 331.v,
                          width: 336.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BlocSelector<CrearcuentaBloc,
                                              CrearcuentaState, bool?>(
                                          selector: (state) =>
                                              state.alcontinuaracep,
                                          builder: (context, alcontinuaracep) {
                                            return CustomCheckboxButton(
                                                text: "msg_al_continuar_acepta"
                                                    .tr,
                                                isExpandedText: true,
                                                value: alcontinuaracep,
                                                margin: EdgeInsets.only(
                                                    right: 49.h),
                                                onChange: (value) {
                                                  context
                                                      .read<CrearcuentaBloc>()
                                                      .add(ChangeCheckBoxEvent(
                                                          value: value));
                                                });
                                          }),
                                      SizedBox(height: 17.v),
                                      SizedBox(
                                          height: 58.v,
                                          width: 312.h,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBtnshadow,
                                                    height: 20.v,
                                                    width: 240.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                            10.h),
                                                    alignment:
                                                        Alignment.bottomCenter),
                                                CustomElevatedButton(
                                                    width: 312.h,
                                                    text: "lbl_registrarse".tr,
                                                    rightIcon: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 30.h),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright)),
                                                    onTap: () {
                                                      onTapRegistrarse(context);
                                                    },
                                                    alignment:
                                                        Alignment.topCenter)
                                              ])),
                                      SizedBox(height: 18.v),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtYatienesunacuenta(context);
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_ya_tienes_una_cuenta2"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray900_1),
                                                TextSpan(
                                                    text:
                                                        "lbl_inicia_sesi_n".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeLightgreen400_1)
                                              ]),
                                              textAlign: TextAlign.left))
                                    ])),
                            Opacity(
                                opacity: 0.8,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgEllipse787,
                                    height: 192.v,
                                    width: 95.h,
                                    alignment: Alignment.bottomLeft))
                          ]))
                    ])))));
  }

  /// Navigates to the inicioprincipalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioprincipalScreen.
  onTapRegistrarse(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioprincipalScreen,
    );
  }

  /// Navigates to the iniciosesionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the iniciosesionScreen.
  onTapTxtYatienesunacuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iniciosesionScreen,
    );
  }
}
