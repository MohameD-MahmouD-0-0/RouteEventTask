import 'package:e_commerce_app/AppColors.dart';
import 'package:e_commerce_app/UI/cuibt/product_list_states.dart';
import 'package:e_commerce_app/UI/cuibt/product_list_tab_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/di.dart';
import '../SearchBar.dart';
import '../grid_view_card_item.dart';


class ProductListTap extends StatelessWidget {
  static const String routeName = 'Product';
  ProductListTabViewModel viewModel = ProductListTabViewModel
    (getAllProductUseCase: injectGetAllProductUseCase());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<ProductListTabViewModel, ProductListTapStates>(
        bloc: viewModel..getProduct(),
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.asset('assets/images/Group 5.png'),
                  SizedBox(
                    height: 18.h,
                  ),
                  const CustomSerachWithShoppingCart(),
                  SizedBox(
                    height: 16.h,
                  ),
                  state is ProductListTapLodingStates
                      ? Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  )
                      : Expanded(
                    child: GridView.builder(
                      itemCount: viewModel.productList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 2.4,
                        crossAxisSpacing: 16.w,
                        mainAxisSpacing: 16.h,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {},
                          child: GridViewCardItem(
                            productEntity: viewModel.productList[index],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
