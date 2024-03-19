import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';

class LastUpdate extends StatelessWidget {
  const LastUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70.h,
      width: 373.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          border:
          Border.all(color: Theme.of(context).primaryColor, width: 2.w)),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(AppStrings.expired,textDirection: TextDirection.rtl,style: GoogleFonts.archivo(
                textStyle:TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold
                )
              ),),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right:150.w),
            child: Text(AppStrings.date,textDirection: TextDirection.rtl,style: GoogleFonts.archivo(
              textStyle:TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold
              )
            ),),
          ),
        ],
      ),

    );
  }
}
