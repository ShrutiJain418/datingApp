import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/filters_page/filters_page.dart';

class FiltersTabContainerScreen extends StatefulWidget {
  const FiltersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FiltersTabContainerScreenState createState() =>
      FiltersTabContainerScreenState();
}

class FiltersTabContainerScreenState extends State<FiltersTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup200,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              height: SizeUtils.height,
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup20,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 40.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Filters",
                                    style: CustomTextStyles.headlineSmallBold,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 75.h,
                                      top: 7.v,
                                    ),
                                    child: Text(
                                      "Clear",
                                      style:
                                          CustomTextStyles.titleMediumPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 35.v),
                          Padding(
                            padding: EdgeInsets.only(left: 40.h),
                            child: Text(
                              "Interested in",
                              style: CustomTextStyles.titleMediumBlack900_1,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Container(
                            height: 58.v,
                            width: 295.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                15.h,
                              ),
                              border: Border.all(
                                color: appTheme.gray200,
                                width: 1.h,
                              ),
                            ),
                            child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor:
                                  theme.colorScheme.onPrimary.withOpacity(1),
                              labelStyle: TextStyle(
                                fontSize: 14.fSize,
                                fontFamily: 'Sk-Modernist',
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelColor: appTheme.black900,
                              unselectedLabelStyle: TextStyle(
                                fontSize: 14.fSize,
                                fontFamily: 'Sk-Modernist',
                                fontWeight: FontWeight.w400,
                              ),
                              indicator: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(15.h),
                                ),
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "Girls",
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Boys",
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Both",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 454.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                FiltersPage(),
                                FiltersPage(),
                                FiltersPage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpOnprimary,
                    height: 12.v,
                    width: 27.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 163.v),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
