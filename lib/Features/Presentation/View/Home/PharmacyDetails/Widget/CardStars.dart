import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/Stars.dart';

class CardStars extends StatelessWidget {
  const CardStars({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, left: 13.w),
          child: Container(
            width: 248.w,
            height: 110.h,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: Theme
                    .of(context)
                    .primaryColor, width: 2)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:23.w,top: 10.h ),
                  child: Text(AppStrings.muliVitamins,
                    style: GoogleFonts.archivo(textStyle: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 18.sp)),),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 42.w),
                  child: Text(AppStrings.tabs,
                    style: GoogleFonts.archivo(textStyle: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 18.sp)),),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 23.w),
                  child:const SizedBox(
                      height: 20,
                      child: Stars()),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(8.0.r),
          child: Column(
            children: [
              Text(AppStrings.price,style: GoogleFonts.archivo(textStyle:TextStyle(color: Theme.of(context).primaryColor)),),
              Container(
                height: 64,
                width: 61,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r)
                    ,color: Theme.of(context).primaryColor
                ),
                child: Image.asset(AppImages.cart,color: Colors.white,),
              ),

            ],
          ),
        ),


      ],
    );
  }
}
