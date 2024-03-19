import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';

class IndicationsCard extends StatelessWidget {
  const IndicationsCard({super.key});

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
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.indications,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp)),
                )),
          ),
          Text(AppStrings.indicationsContent,textDirection: TextDirection.rtl,textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
