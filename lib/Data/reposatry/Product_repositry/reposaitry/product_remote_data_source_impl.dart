import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Data/Api/api_Manager.dart';
import 'package:e_commerce_app/domain/entity/ProductResponseEntity.dart';
import 'package:e_commerce_app/domain/entity/failuers.dart';
import 'package:e_commerce_app/domain/repository/data_sources/home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
  ApiManager apiManager;
  HomeRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failuer, ProductResponseEntity>> getAllProduct()async {
  var either =await apiManager.getAllProduct();
  return either;
  }

}