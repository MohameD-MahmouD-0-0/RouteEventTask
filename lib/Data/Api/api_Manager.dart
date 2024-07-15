import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/Data/Api/api_constant.dart';
import 'package:e_commerce_app/UI/ProductResponseDto.dart';
import 'package:http/http.dart' as http;
import '../../domain/entity/failuers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ApiManager {
  ApiManager._();

  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  Future<Either<Failuer, ProductResponseDto>> getAllProduct() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConstant.baseUrl, ApiConstant.getAllProductApi);
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      var productResponse = ProductResponseDto.fromJson(json);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(productResponse);
      } else {
        return Left(ServerError(errorMessage: productResponse.message));
      }
    } else {
      return Left(NetworkError(errorMessage: 'Check Internet connection'));
    }
  }
}
