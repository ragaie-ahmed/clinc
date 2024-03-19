import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(width: 10.w,);
      },
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      shrinkWrap: true
      ,
      itemBuilder: (context, index) {
      return const CardDetails();
    },);
  }
}
class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332.w,
      height: 331.h,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 21.h,left: 98),
                child: Image.asset(AppImages.medicine),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 72.w,top: 12.h),
                child: Icon(Icons.favorite,color: Theme.of(context).colorScheme.error,size: 35.sp,),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    AppStrings.muliVitamins,
                    style: GoogleFonts.archivo(
                        textStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 60.w),
                    child: Text(AppStrings.price,style: GoogleFonts.archivo(textStyle:TextStyle(color: Theme.of(context).colorScheme.error)),),
                  ),
                  Text(AppStrings.oldPrice,style: GoogleFonts.archivo(textStyle:TextStyle(color: Theme.of(context).colorScheme.error, decoration: TextDecoration.lineThrough)),),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 50.w),
                child: Container(
                    width: 61.w,
                    height: 64.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(25.sp)
                    ),
                    child: Image.asset(AppImages.cart)),
              )
            ],
          )
        ],
      ),
    );
  }
}

