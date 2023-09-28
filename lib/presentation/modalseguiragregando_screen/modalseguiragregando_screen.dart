import 'bloc/modalseguiragregando_bloc.dart';
import 'models/modalseguiragregando_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_outlined_button.dart';
import 'package:smartraincontrol/widgets/custom_text_form_field.dart';

class ModalseguiragregandoScreen extends StatelessWidget {
  const ModalseguiragregandoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ModalseguiragregandoBloc>(
        create: (context) => ModalseguiragregandoBloc(ModalseguiragregandoState(
            modalseguiragregandoModelObj: ModalseguiragregandoModel()))
          ..add(ModalseguiragregandoInitialEvent()),
        child: ModalseguiragregandoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 29.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgMaximize,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 10.h),
                            onTap: () {
                              onTapImgMaximizeone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 40.h, top: 21.v),
                            child: Text("msg_smart_rain_electrov_lvula2".tr,
                                style: theme.textTheme.titleLarge)),
                        Text("lbl_id_producto_1".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 357.v,
                                width: 320.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  top: 279.v,
                                                  right: 8.h,
                                                  bottom: 22.v),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 16.v),
                                              decoration: AppDecoration
                                                  .fillLightGreen
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 1.v),
                                                        child: Text(
                                                            "msg_guardar_informaci_n"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumPrimary)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_nombre_de_la_tuber_a"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .labelLarge),
                                                    SizedBox(height: 17.v),
                                                    BlocSelector<
                                                            ModalseguiragregandoBloc,
                                                            ModalseguiragregandoState,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .pipedirectionController,
                                                        builder: (context,
                                                            pipedirectionController) {
                                                          return CustomTextFormField(
                                                              controller:
                                                                  pipedirectionController,
                                                              hintText:
                                                                  "lbl_tuber_a_derecha"
                                                                      .tr,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          9.h,
                                                                      vertical:
                                                                          15.v));
                                                        }),
                                                    SizedBox(height: 19.v),
                                                    Text(
                                                        "msg_descrripci_n_y_o"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .labelLarge),
                                                    SizedBox(height: 17.v),
                                                    Container(
                                                        width: 312.h,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 9.h,
                                                                vertical: 18.v),
                                                        decoration: AppDecoration
                                                            .outlineGray
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder14),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height: 63.v),
                                                              Text(
                                                                  "msg_2km_de_la_pileta"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .labelLargeOnError)
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 34.v),
                                              decoration: AppDecoration
                                                  .outlineIndigoA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder14),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(
                                                        width: 187.h,
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "msg_deseas_seguir_agregando2"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleSmallBluegray900_1),
                                                                  TextSpan(
                                                                      text: "lbl_tuber_as2"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleSmallLightgreen400)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .center)),
                                                    SizedBox(height: 19.v),
                                                    CustomOutlinedButton(
                                                        text: "lbl_s".tr),
                                                    SizedBox(height: 20.v),
                                                    CustomOutlinedButton(
                                                        text: "lbl_no".tr,
                                                        onTap: () {
                                                          onTapNo(context);
                                                        },
                                                        isDisabled: true)
                                                  ])))
                                    ]))),
                        SizedBox(height: 133.v),
                        SizedBox(
                            width: double.maxFinite,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Opacity(
                                      opacity: 0.8,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse787,
                                          height: 192.v,
                                          width: 95.h,
                                          margin:
                                              EdgeInsets.only(bottom: 30.v))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse8101,
                                      height: 91.v,
                                      width: 58.h,
                                      margin: EdgeInsets.only(top: 132.v))
                                ]))
                      ])))
                ]))));
  }

  /// Navigates to the buscandotuberiasScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the buscandotuberiasScreen.
  onTapImgMaximizeone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.buscandotuberiasScreen,
    );
  }

  /// Navigates to the inicioScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioScreen.
  onTapNo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioScreen,
    );
  }
}
