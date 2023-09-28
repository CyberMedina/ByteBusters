import 'bloc/arduinoagregado_bloc.dart';
import 'models/arduinoagregado_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';

class ArduinoagregadoScreen extends StatelessWidget {
  const ArduinoagregadoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ArduinoagregadoBloc>(
        create: (context) => ArduinoagregadoBloc(ArduinoagregadoState(
            arduinoagregadoModelObj: ArduinoagregadoModel()))
          ..add(ArduinoagregadoInitialEvent()),
        child: ArduinoagregadoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ArduinoagregadoBloc, ArduinoagregadoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArduinouno1,
                            height: 107.v,
                            width: 71.h),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 272.h,
                                margin: EdgeInsets.only(
                                    left: 20.h, top: 38.v, right: 20.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_el_dispositivo_smart2".tr,
                                          style:
                                              CustomTextStyles.titleMedium_2),
                                      TextSpan(
                                          text: "msg_ha_sido_conectado".tr,
                                          style: CustomTextStyles
                                              .titleMediumLightgreen400_1)
                                    ]),
                                    textAlign: TextAlign.center))),
                        Spacer(),
                        SizedBox(height: 10.v),
                        SizedBox(
                            height: 60.v,
                            width: 312.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgBtnshadow,
                                      height: 20.v,
                                      width: 240.h,
                                      radius: BorderRadius.circular(10.h),
                                      alignment: Alignment.bottomCenter),
                                  CustomElevatedButton(
                                      width: 312.h,
                                      text: "msg_establecer_tuber_as".tr,
                                      rightIcon: Container(
                                          margin: EdgeInsets.only(left: 30.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright)),
                                      onTap: () {
                                        onTapEstablecer(context);
                                      },
                                      alignment: Alignment.topCenter)
                                ]))
                      ]))));
    });
  }

  /// Navigates to the buscandotuberiasScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the buscandotuberiasScreen.
  onTapEstablecer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.buscandotuberiasScreen,
    );
  }
}
