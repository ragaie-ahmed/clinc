import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AppBarPharmacy extends StatelessWidget {
  const AppBarPharmacy(
      {super.key, required this.ontTap1, required this.ontTap2, required this.url1, required this.url2, required this.color1, required this.color2});

  final Color color1;
  final Color color2;
  final void Function()? ontTap1;
  final void Function()? ontTap2;
  final String url1;
  final String url2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(onTap: ontTap1, child: Image.asset(url1, color:color1,),),
        const SizedBox(width: 10,),
        GestureDetector(onTap: ontTap2, child: Image.asset(url2,color: color2,)),
      ],
    );
  }
}
