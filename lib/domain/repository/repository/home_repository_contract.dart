import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:e_commerce_app/domain/entity/failuers.dart';

abstract class HomeRepositoryContract{
  Future<Either<Failuer,ProductResponseEntity>> getAllProduct();
}