import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:e_commerce_app/domain/entity/failuers.dart';

abstract class ProductListTapStates{}

class ProductListTapInitialStates extends ProductListTapStates{}
class ProductListTapLodingStates extends ProductListTapStates{
  String ? lodingMessage;
  ProductListTapLodingStates({required this.lodingMessage});
}
class ProductListTapEroorStates extends ProductListTapStates{
  Failuer errors;
  ProductListTapEroorStates({required this.errors});
}
class ProductListTapSucssesStates extends ProductListTapStates {
ProductResponseEntity productResponseEntity ;
ProductListTapSucssesStates({required this.productResponseEntity});
}
