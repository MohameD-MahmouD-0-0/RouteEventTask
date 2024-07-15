import 'package:e_commerce_app/AppColors.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewCardItem extends StatelessWidget {
  static const String routeName = 'GridViewCardItem';
  bool isWishListed = false;
  ProductEntity productEntity;

  GridViewCardItem({
    required this.productEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 191.w,
      height: 237.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // نصف المساحة للصورة
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.network(
                    productEntity.imageCover ?? '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                  top: 5.h,
                  right: 2.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: IconButton(
                      color: AppColors.primaryColor,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: isWishListed
                          ? const Icon(Icons.favorite_rounded)
                          : const Icon(Icons.favorite_border_rounded),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.h),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    productEntity.title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.darkPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    productEntity.description ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.darkPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    "EGP ${productEntity.price}",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.darkPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Row(
                    children: [
                      Text(
                        "Review ${productEntity.ratingsAverage}",
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.darkPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Icon(
                        Icons.star,
                        size: 14.sp,
                        color: Colors.amber,
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.transparent,
                        child: Icon(
                          Icons.add_circle,
                          size: 12.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
