import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';

class InfomationCard extends StatelessWidget {
  const InfomationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 373.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          border:
              Border.all(color: Theme.of(context).primaryColor, width: 2.w)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.informationPharmacy,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold)),
                )),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 5.h,right: 63.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppStrings.egypt,textDirection: TextDirection.rtl ,style:GoogleFonts.archivo(textStyle:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp
                ))),
                SizedBox(width: 15.w,),
                Text(AppStrings.namePharmacy,textDirection: TextDirection.rtl,style: GoogleFonts.archivo(textStyle:TextStyle(
                  color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,
                  fontSize: 18.sp
                )),),

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 5.h,right: 63.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppStrings.kilo,textDirection: TextDirection.rtl ,style:GoogleFonts.archivo(textStyle:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp
                ))),
                SizedBox(width: 15.w,),
                Text(AppStrings.distance,textDirection: TextDirection.rtl,style: GoogleFonts.archivo(textStyle:TextStyle(
                  color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,
                  fontSize: 18.sp
                )),),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
