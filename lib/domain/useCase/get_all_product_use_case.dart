import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:e_commerce_app/domain/entity/failuers.dart';
import 'package:e_commerce_app/domain/repository/repository/home_repository_contract.dart';

class GetAllProductUseCase {
  HomeRepositoryContract repositoryContract ;
  GetAllProductUseCase({required this.repositoryContract});

  Future<Either< Failuer,ProductResponseEntity>> invoke()
  {
      return repositoryContract.getAllProduct();
  }
}