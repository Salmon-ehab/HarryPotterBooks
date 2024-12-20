
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harrypoterbooks/core/asset/colors.dart';
import 'package:harrypoterbooks/core/asset/fonts.dart';

abstract class AppStyles{

  static  TextStyle  font20blueSemiBold600 = TextStyle(
    color: AppColor.blueColor,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold600,
    fontFamily: GoogleFonts.comfortaa().fontFamily,
  );

    static  TextStyle  font15blueRegular400 = TextStyle(
    color: AppColor.blueColor,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.comfortaa().fontFamily,
  );
  static  TextStyle  font20whiteRegular400 = TextStyle(
    color: AppColor.white,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.comfortaa().fontFamily,
  );
  static  TextStyle  font17whiteBold700= TextStyle(
    color: AppColor.white,
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.comfortaa().fontFamily,
  );
  static  TextStyle  font14whiteRegular400= TextStyle(
    color: AppColor.white,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.comfortaa().fontFamily,
  );
}