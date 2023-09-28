import '../configuracion_screen/widgets/sectionlistconf_item_widget.dart';
import 'bloc/configuracion_bloc.dart';
import 'models/configuracion_model.dart';
import 'models/sectionlistconf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/custom_elevated_button.dart';

class ConfiguracionScreen extends StatelessWidget {
  const ConfiguracionScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfiguracionBloc>(
      create: (context) => ConfiguracionBloc(ConfiguracionState(
        configuracionModelObj: ConfiguracionModel(),
      ))
        ..add(ConfiguracionInitialEvent()),
      child: ConfiguracionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.v),
              Expanded(
                child: BlocSelector<ConfiguracionBloc, ConfiguracionState,
                    ConfiguracionModel?>(
                  selector: (state) => state.configuracionModelObj,
                  builder: (context, configuracionModelObj) {
                    return GroupedListView<SectionlistconfItemModel, String>(
                      shrinkWrap: true,
                      stickyHeaderBackgroundColor: Colors.transparent,
                      elements:
                          configuracionModelObj?.sectionlistconfItemList ?? [],
                      groupBy: (element) => element.groupBy!,
                      sort: false,
                      groupSeparatorBuilder: (String value) {
                        return CustomElevatedButton(
                          height: 28.v,
                          width: 176.h,
                          text: "lbl_configuraci_n".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 12.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMaximize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.none,
                          buttonTextStyle: theme.textTheme.titleLarge!,
                        );
                      },
                      itemBuilder: (context, model) {
                        return SectionlistconfItemWidget(
                          model,
                        );
                      },
                      separator: SizedBox(
                        height: 1.v,
                      ),
                    );
                  },
                ),
              ),
              Container(
                decoration: AppDecoration.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 25.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCalendar,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            bottom: 12.v,
                          ),
                        ),
                        Container(
                          width: 215.h,
                          margin: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "msg_t_rminos_de_uso".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMaximizeLightGreen400,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            top: 10.v,
                            bottom: 12.v,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 83.h),
                child: Text(
                  "msg_versi_n_1_0_0".tr,
                  style: CustomTextStyles.labelLargeLightgreen600,
                ),
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_copyright_smart".tr,
                  style: CustomTextStyles.labelLargeLightgreen600,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(
                    top: 43.v,
                    right: 27.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.lightGreen400,
                    borderRadius: BorderRadius.circular(
                      14.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 359.h,
                child: Divider(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgIconsBlueGray200,
                        height: 32.v,
                        width: 213.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "lbl_inicio".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 31.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "lbl_dispositivos".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_rutinas".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 11.v,
                      bottom: 3.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSettingsPrimary,
                          height: 19.v,
                          width: 18.h,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_configuraci_n".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
