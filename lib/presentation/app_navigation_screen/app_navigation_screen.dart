import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 375.h,
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.white,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.v),
                                  child: Text("lbl_app_navigation".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: theme
                                              .colorScheme.onInverseSurface,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_check_your_app_s".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.blueGray40001,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          SizedBox(height: 5.v),
                          Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: theme.colorScheme.onInverseSurface)
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                decoration: AppDecoration.white,
                                child: Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapSplashscreen(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_splashscreen".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapCrearCuenta(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_crearcuenta".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapInicioSesion(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_iniciosesion".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapInicioPrincipal(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    20.h,
                                                                vertical: 10.v),
                                                    child: Text(
                                                        "lbl_inicioprincipal"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAnadirDispositivo(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_anadirdispositivo"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapArduinoAgregado(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    20.h,
                                                                vertical: 10.v),
                                                    child: Text(
                                                        "lbl_arduinoagregado"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapBuscandoTuberias(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_buscandotuberias"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapDescripcionTuberia(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_descripciontuberia"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapModalSeguirAgregando(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_modalseguiragregando"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapInicio(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_inicio2".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapConfiguracion(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.white,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_configuracion".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .onInverseSurface,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ])))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the splashscreenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the splashscreenScreen.
  onTapSplashscreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashscreenScreen,
    );
  }

  /// Navigates to the crearcuentaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the crearcuentaScreen.
  onTapCrearCuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.crearcuentaScreen,
    );
  }

  /// Navigates to the iniciosesionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the iniciosesionScreen.
  onTapInicioSesion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iniciosesionScreen,
    );
  }

  /// Navigates to the inicioprincipalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioprincipalScreen.
  onTapInicioPrincipal(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioprincipalScreen,
    );
  }

  /// Navigates to the anadirdispositivoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the anadirdispositivoScreen.
  onTapAnadirDispositivo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.anadirdispositivoScreen,
    );
  }

  /// Navigates to the arduinoagregadoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the arduinoagregadoScreen.
  onTapArduinoAgregado(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.arduinoagregadoScreen,
    );
  }

  /// Navigates to the buscandotuberiasScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the buscandotuberiasScreen.
  onTapBuscandoTuberias(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.buscandotuberiasScreen,
    );
  }

  /// Navigates to the descripciontuberiaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the descripciontuberiaScreen.
  onTapDescripcionTuberia(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.descripciontuberiaScreen,
    );
  }

  /// Navigates to the modalseguiragregandoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the modalseguiragregandoScreen.
  onTapModalSeguirAgregando(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.modalseguiragregandoScreen,
    );
  }

  /// Navigates to the inicioScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the inicioScreen.
  onTapInicio(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.inicioScreen,
    );
  }

  /// Navigates to the configuracionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the configuracionScreen.
  onTapConfiguracion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.configuracionScreen,
    );
  }
}
