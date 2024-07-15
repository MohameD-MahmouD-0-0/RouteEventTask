import 'package:e_commerce_app/domain/repository/data_sources/home_remote_data_source.dart';
import 'package:e_commerce_app/domain/repository/repository/home_repository_contract.dart';
import 'package:e_commerce_app/domain/useCase/get_all_product_use_case.dart';
import 'package:e_commerce_app/Data/reposatry/Product_repositry/reposaitry/product_remote_data_source_impl.dart';

import '../Data/Api/api_Manager.dart';
import '../Data/reposatry/Product_repositry/reposaitry/home_repositry_imp.dart';


HomeRepositoryContract injectHomeRepositoryContract(){
  return HomeRepositryImpl(remoteDataSource: injectHomeRemoteDataSource());
}
HomeRemoteDataSource injectHomeRemoteDataSource(){
return HomeRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}

GetAllProductUseCase injectGetAllProductUseCase(){
  return GetAllProductUseCase(
      repositoryContract: injectHomeRepositoryContract());
}