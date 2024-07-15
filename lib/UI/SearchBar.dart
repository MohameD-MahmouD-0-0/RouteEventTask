import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../UI/CustomTextfiled.dart';


class CustomSerachWithShoppingCart extends StatelessWidget {
  const CustomSerachWithShoppingCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextfiled(),
        ),
        SizedBox(
          width: 12.w,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset('assets/images/Vector.png'),
        )
      ],
    );
  }
}
