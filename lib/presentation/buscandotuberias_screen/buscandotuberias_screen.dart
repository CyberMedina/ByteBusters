import '../buscandotuberias_screen/widgets/tilecontent_item_widget.dart';
import 'bloc/buscandotuberias_bloc.dart';
import 'models/buscandotuberias_model.dart';
import 'models/tilecontent_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smartraincontrol/core/app_export.dart';
import 'package:smartraincontrol/widgets/app_bar/appbar_image_1.dart';
import 'package:smartraincontrol/widgets/app_bar/custom_app_bar.dart';

class BuscandotuberiasScreen extends StatelessWidget {
  const BuscandotuberiasScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BuscandotuberiasBloc>(
        create: (context) => BuscandotuberiasBloc(BuscandotuberiasState(
            buscandotuberiasModelObj: BuscandotuberiasModel()))
          ..add(BuscandotuberiasInitialEvent()),
        child: BuscandotuberiasScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 36.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgMaximize,
                    margin:
                        EdgeInsets.only(left: 12.h, top: 16.v, bottom: 15.v)),
                title: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_a_adir".tr,
                              style: theme.textTheme.titleLarge),
                          TextSpan(
                              text: "lbl_tuber_as".tr,
                              style: CustomTextStyles.titleLargeLightgreen400_1)
                        ]),
                        textAlign: TextAlign.center))),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 15.h, top: 10.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_detectando".tr,
                                    style: theme.textTheme.titleLarge),
                                TextSpan(
                                    text: "lbl_electrov_lvulas".tr,
                                    style: CustomTextStyles
                                        .titleLargeLightgreen400)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 4.v),
                      SizedBox(
                          height: 548.v,
                          width: 346.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 24.v),
                                    child: SizedBox(
                                        width: 312.h, child: Divider()))),
                            Align(
                                alignment: Alignment.center,
                                child: DottedBorder(
                                    color: appTheme.deepPurpleA200,
                                    padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v),
                                    strokeWidth: 1.h,
                                    radius: Radius.circular(5),
                                    borderType: BorderType.RRect,
                                    dashPattern: [10, 5],
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.h, vertical: 20.v),
                                        decoration: AppDecoration
                                            .outlineDeepPurpleA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: BlocSelector<
                                                BuscandotuberiasBloc,
                                                BuscandotuberiasState,
                                                BuscandotuberiasModel?>(
                                            selector: (state) =>
                                                state.buscandotuberiasModelObj,
                                            builder: (context,
                                                buscandotuberiasModelObj) {
                                              return ListView.separated(
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: 20.v);
                                                  },
                                                  itemCount:
                                                      buscandotuberiasModelObj
                                                              ?.tilecontentItemList
                                                              .length ??
                                                          0,
                                                  itemBuilder:
                                                      (context, index) {
                                                    TilecontentItemModel model =
                                                        buscandotuberiasModelObj
                                                                    ?.tilecontentItemList[
                                                                index] ??
                                                            TilecontentItemModel();
                                                    return TilecontentItemWidget(
                                                        model,
                                                        onTapAddPipeline: () {
                                                      onTapAddPipeline(context);
                                                    });
                                                  });
                                            }))))
                          ]))
                    ]))));
  }

  /// Navigates to the descripciontuberiaScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the descripciontuberiaScreen.
  onTapAddPipeline(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.descripciontuberiaScreen,
    );
  }
}
