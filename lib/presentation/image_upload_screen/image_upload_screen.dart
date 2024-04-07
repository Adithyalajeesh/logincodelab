import 'package:logincodelab/widgets/app_bar/custom_app_bar.dart';
import 'package:logincodelab/widgets/app_bar/appbar_title.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:logincodelab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:logincodelab/core/app_export.dart';

class ImageUploadScreen extends StatelessWidget {
  const ImageUploadScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: DottedBorder(
                  color: theme.colorScheme.primaryContainer.withOpacity(0.66),
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  dashPattern: [
                    6,
                    6,
                  ],
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 97.h,
                      vertical: 203.v,
                    ),
                    decoration: AppDecoration.outlinePrimaryContainer1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 74.v),
              _buildTwo(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Upload  a  Image",
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          width: 119.h,
          text: "Upload",
          buttonTextStyle: CustomTextStyles.bodyMediumOnError,
        ),
        CustomElevatedButton(
          width: 112.h,
          text: "View",
          buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
          buttonTextStyle: theme.textTheme.bodyMedium!,
        ),
      ],
    );
  }
}
