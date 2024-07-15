import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:e_commerce_app/domain/entity/failuers.dart';

abstract class HomeRemoteDataSource{
  Future<Either<Failuer,ProductResponseEntity>> getAllProduct();
}