import 'package:flutter/material.dart';
import 'package:responsive_login_page/widget/appstyle.dart';
import 'package:responsive_login_page/widget/responsiveness_widget.dart';

import '../component/loginfields.dart';
import '../widget/appcolors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.kBackColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? const SizedBox()
                : Expanded(
                    child: Container(
                      height: height,
                      color: AppColors.kMainBlueColor,
                      child: Center(
                        child: Text(
                          'AdminExpress.',
                          style: kRalewayStyle.copyWith(
                            fontSize: 50,
                            color: AppColors.kWhiteColor,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              width: height * 0.1,
            ),
            Expanded(
              child: Container(
                height: height,
                margin: EdgeInsets.symmetric(
                  horizontal: height * 0.12,
                ),
                color: AppColors.kBackColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    FittedBox(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Let's ",
                              style: kRalewayStyle.copyWith(
                                color: Colors.black,
                                fontSize: 27.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign in.',
                              style: kRalewayStyle.copyWith(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    FittedBox(
                      child: Text(
                        'Hey, Enter your details to get sign in \ninto your account',
                        style: kRalewayStyle.copyWith(
                          fontSize: 14,
                          color: AppColors.kTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.064,
                    ),
                    LoginForm(
                      keyboardType: TextInputType.emailAddress,
                      width: width,
                      headingText: 'Email',
                      hintText: 'Enter email',
                      icon: Icons.mail,
                    ),
                    SizedBox(
                      height: height * 0.014,
                    ),
                    LoginForm(
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: Icons.remove_red_eye_rounded,
                      obscureText: true,
                      width: width,
                      headingText: 'Password',
                      hintText: 'Enter password',
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password',
                          style: kRalewayStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kMainBlueColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.kMainBlueColor,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Text(
                          'Sign in',
                          style: kRalewayStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
