import 'package:flutter/material.dart';
import 'package:logincodelab/core/app_export.dart';

class SplashFinalScreen extends StatelessWidget {
  const SplashFinalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.yellow900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Container(
                decoration: AppDecoration.outlinePrimaryContainer,
                child: Container(
                  width: 224.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineYellow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder63,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 32.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgCodelandLogo2,
                        height: 180.adaptSize,
                        width: 180.adaptSize,
                      ),
                      SizedBox(height: 1.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgCodelandLogo1,
                        height: 91.v,
                        width: 144.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
