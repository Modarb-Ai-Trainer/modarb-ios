import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modarb_app/core/theming/colors.dart';

class TextStyles {
  static TextStyle font60White900 = GoogleFonts.nunitoSans(
    fontSize: 62.sp,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
  static TextStyle font28White700 = GoogleFonts.montserrat(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,

  );
  static TextStyle font19White400 = GoogleFonts.montserrat(
    fontSize: 19.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,

  );
  static TextStyle font20White600 = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle font16White700 = GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.lightWhite,

  );
  static TextStyle font13White700 = GoogleFonts.montserrat(
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.lightWhite,

  );
  static TextStyle font13White600 = GoogleFonts.montserrat(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.lightWhite,

  );


}