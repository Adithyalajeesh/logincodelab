import 'package:logincodelab/widgets/custom_text_form_field.dart';
import 'package:logincodelab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:logincodelab/core/app_export.dart';

class LoginFinalScreen extends StatelessWidget {
  LoginFinalScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 390.h,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 40.v),
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 248.v,
                        width: 202.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCodelandLogo1,
                              height: 104.v,
                              width: 202.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCodelandLogo2,
                              height: 171.v,
                              width: 179.h,
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Biomedical",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "  ",
                            ),
                            TextSpan(
                              text: "Kiosk",
                              style: CustomTextStyles.titleLargeff201f1f,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 56.h),
                        child: Text(
                          "for HCE’s",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    CustomTextFormField(
                      controller: userNameController,
                      hintText: "Username ",
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 27.v),
                    CustomElevatedButton(
                      height: 56.v,
                      text: "Login",
                      margin: EdgeInsets.only(left: 1.h),
                    ),
                    SizedBox(height: 58.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "For Assistance & Login Details Contact: ",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      height: 15.v,
                      width: 249.h,
                      margin: EdgeInsets.only(left: 10.h),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "English, Kannada & Telugu :  ",
                                    style: CustomTextStyles.bodySmallff000000,
                                  ),
                                  TextSpan(
                                    text: "7406333800",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 74.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      height: 15.v,
                      width: 248.h,
                      margin: EdgeInsets.only(left: 10.h),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "English, Kannada & Hindi    :  ",
                                    style: CustomTextStyles.bodySmallff000000,
                                  ),
                                  TextSpan(
                                    text: "9071386515",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 74.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 82.v),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 34.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "v1.7",
                                style: CustomTextStyles.bodySmallInter,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "© 2023,",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "Codeland Infosolutions Pvt Ltd.",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
