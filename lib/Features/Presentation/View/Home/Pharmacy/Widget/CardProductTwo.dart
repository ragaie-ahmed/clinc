import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';

class CardProductTwo extends StatelessWidget {
  const CardProductTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const CardProduct2();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 27.h,
          );
        },
        itemCount: 10);
  }
}

class CardProduct2 extends StatelessWidget {
  const CardProduct2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 265.w,
          height: 114.h,
          decoration: BoxDecoration(
              color: Theme.of(context).highlightColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.r),
                  topLeft: Radius.circular(25.r))),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 7.w, top: 7.h),
                child: Image.asset(AppImages.medicine),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  children: [
                    Text(
                      AppStrings.muliVitamins,
                      style: GoogleFonts.archivo(
                          textStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w800)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60.w),
                      child: Text(
                        AppStrings.price,
                        style: GoogleFonts.archivo(
                            textStyle: TextStyle(
                                color: Theme.of(context).colorScheme.error)),
                      ),
                    ),
                    Text(
                      AppStrings.oldPrice,
                      style: GoogleFonts.archivo(
                          textStyle: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                              decoration: TextDecoration.lineThrough,
                              overflow: TextOverflow.ellipsis)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100.w,
          height: 114.h,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.r),
                  bottomRight: Radius.circular(25.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_border,
                color: Theme.of(context).colorScheme.secondary,
                size: 35.sp,
              ),
              Image.asset(AppImages.cartLight,
                  color: Theme.of(context).colorScheme.secondary)
            ],
          ),
        ),
      ],
    );
  }
}
