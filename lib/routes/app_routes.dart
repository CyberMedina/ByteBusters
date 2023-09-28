import 'package:flutter/material.dart';
import 'package:smartraincontrol/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:smartraincontrol/presentation/crearcuenta_screen/crearcuenta_screen.dart';
import 'package:smartraincontrol/presentation/iniciosesion_screen/iniciosesion_screen.dart';
import 'package:smartraincontrol/presentation/inicioprincipal_screen/inicioprincipal_screen.dart';
import 'package:smartraincontrol/presentation/anadirdispositivo_screen/anadirdispositivo_screen.dart';
import 'package:smartraincontrol/presentation/arduinoagregado_screen/arduinoagregado_screen.dart';
import 'package:smartraincontrol/presentation/buscandotuberias_screen/buscandotuberias_screen.dart';
import 'package:smartraincontrol/presentation/descripciontuberia_screen/descripciontuberia_screen.dart';
import 'package:smartraincontrol/presentation/modalseguiragregando_screen/modalseguiragregando_screen.dart';
import 'package:smartraincontrol/presentation/inicio_screen/inicio_screen.dart';
import 'package:smartraincontrol/presentation/configuracion_screen/configuracion_screen.dart';
import 'package:smartraincontrol/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String crearcuentaScreen = '/crearcuenta_screen';

  static const String iniciosesionScreen = '/iniciosesion_screen';

  static const String inicioprincipalScreen = '/inicioprincipal_screen';

  static const String anadirdispositivoScreen = '/anadirdispositivo_screen';

  static const String arduinoagregadoScreen = '/arduinoagregado_screen';

  static const String buscandotuberiasScreen = '/buscandotuberias_screen';

  static const String descripciontuberiaScreen = '/descripciontuberia_screen';

  static const String modalseguiragregandoScreen =
      '/modalseguiragregando_screen';

  static const String inicioScreen = '/inicio_screen';

  static const String configuracionScreen = '/configuracion_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashscreenScreen: SplashscreenScreen.builder,
        crearcuentaScreen: CrearcuentaScreen.builder,
        iniciosesionScreen: IniciosesionScreen.builder,
        inicioprincipalScreen: InicioprincipalScreen.builder,
        anadirdispositivoScreen: AnadirdispositivoScreen.builder,
        arduinoagregadoScreen: ArduinoagregadoScreen.builder,
        buscandotuberiasScreen: BuscandotuberiasScreen.builder,
        descripciontuberiaScreen: DescripciontuberiaScreen.builder,
        modalseguiragregandoScreen: ModalseguiragregandoScreen.builder,
        inicioScreen: InicioScreen.builder,
        configuracionScreen: ConfiguracionScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashscreenScreen.builder
      };
}
