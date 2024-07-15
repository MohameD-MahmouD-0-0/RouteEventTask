import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:e_commerce_app/domain/entity/failuers.dart';
import 'package:e_commerce_app/domain/repository/data_sources/home_remote_data_source.dart';
import 'package:e_commerce_app/domain/repository/repository/home_repository_contract.dart';

class HomeRepositryImpl implements HomeRepositoryContract
{
  HomeRemoteDataSource remoteDataSource ;
  HomeRepositryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failuer, ProductResponseEntity>> getAllProduct() {
    return remoteDataSource.getAllProduct();
  }
}