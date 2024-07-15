import 'package:e_commerce_app/UI/cuibt/product_list_states.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/useCase/get_all_product_use_case.dart';

class ProductListTabViewModel extends Cubit<ProductListTapStates>{
  GetAllProductUseCase getAllProductUseCase;
ProductListTabViewModel({required this.getAllProductUseCase}):super(ProductListTapInitialStates());
List<ProductEntity> productList =[];
getProduct()async{
  emit(ProductListTapLodingStates(lodingMessage: 'Loding ....'));
  var either = await getAllProductUseCase.invoke();
  either.fold((l){
    emit(ProductListTapEroorStates(errors: l));
  }, (response){
    productList = response.data??[];
    emit(ProductListTapSucssesStates(productResponseEntity: response));
  });
}
}