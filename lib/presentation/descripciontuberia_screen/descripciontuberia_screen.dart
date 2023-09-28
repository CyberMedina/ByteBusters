import 'bloc/descripciontuberia_bloc.dart';
import 'models/descripciontuberia_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';
import 'package:smartraincontrol/widgets/custom_text_form_field.dart';

class DescripciontuberiaScreen extends StatelessWidget {
  const DescripciontuberiaScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DescripciontuberiaBloc>(
        create: (context) => DescripciontuberiaBloc(DescripciontuberiaState(
            descripciontuberiaModelObj: DescripciontuberiaModel()))
          ..add(DescripciontuberiaInitialEvent()),
        child: DescripciontuberiaScreen());
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
                        Padding(
                            padding: EdgeInsets.only(left: 22.h, top: 10.v),
                            child: Text("msg_nombre_de_la_tuber_a".tr,
                                style: theme.textTheme.labelLarge)),
                        BlocSelector<
                                DescripciontuberiaBloc,
                                DescripciontuberiaState,
                                TextEditingController?>(
                            selector: (state) => state.edittextController,
                            builder: (context, edittextController) {
                              return CustomTextFormField(
                                  controller: edittextController,
                                  margin: EdgeInsets.only(
                                      left: 22.h, top: 4.v, right: 26.h),
                                  alignment: Alignment.center);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h, top: 19.v),
                            child: Text("msg_descrripci_n_y_o".tr,
                                style: theme.textTheme.labelLarge)),
                        BlocSelector<
                                DescripciontuberiaBloc,
                                DescripciontuberiaState,
                                TextEditingController?>(
                            selector: (state) => state.edittextoneController,
                            builder: (context, edittextoneController) {
                              return CustomTextFormField(
                                  controller: edittextoneController,
                                  margin: EdgeInsets.only(
                                      left: 22.h, top: 17.v, right: 26.h),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center);
                            }),
                        CustomElevatedButton(
                            text: "msg_guardar_informaci_n".tr,
                            margin: EdgeInsets.only(
                                left: 22.h, top: 41.v, right: 26.h),
                            rightIcon: Container(
                                margin: EdgeInsets.only(left: 30.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowright)),
                            onTap: () {
                              onTapGuardar(context);
                            },
                            alignment: Alignment.center),
                        SizedBox(height: 155.v),
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
                                      imagePath:
                                          ImageConstant.imgEllipse81091x58,
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

  /// Navigates to the inicioprincipalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioprincipalScreen.
  onTapGuardar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioprincipalScreen,
    );
  }
}
