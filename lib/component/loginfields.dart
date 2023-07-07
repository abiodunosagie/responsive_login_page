import 'package:flutter/material.dart';

import '../widget/appcolors.dart';
import '../widget/appstyle.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
    required this.width,
    required this.headingText,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
  });

  final String headingText;
  final String hintText;
  final double width;
  final IconData icon;
  final bool obscureText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText,
          style: kRalewayStyle.copyWith(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Container(
          height: 50.0,
          width: width,
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(
            //   16,
            // ),
            color: AppColors.kWhiteColor,
          ),
          child: TextFormField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: kRalewayStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.kBlueDarkColor,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                top: 16,
              ),
              hintText: hintText,
              hintStyle: kRalewayStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.kBlueDarkColor.withOpacity(0.5),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  suffixIcon,
                  color: Colors.blueGrey[800],
                  size: 20,
                ),
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  color: Colors.blueGrey[800],
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
