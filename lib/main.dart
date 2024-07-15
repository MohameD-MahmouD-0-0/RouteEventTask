import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'MyTheme.dart';
import 'UI/cuibt/ProductListTap.dart';
import 'domain/entity/ProductResponseEntity.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(430,932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner:  false,
          initialRoute: ProductListTap.routeName,
          routes: {
            ProductListTap.routeName:(context)=>ProductListTap()
          },theme: MyTheme.lightMode,
        );
      },
    );
  }
}