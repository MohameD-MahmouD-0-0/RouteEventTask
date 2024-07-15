class Failuer{
  String ? errorMessage;
  Failuer({required this.errorMessage});
}
class ServerError extends Failuer{
  ServerError({required super.errorMessage});
}
class NetworkError extends Failuer{
  NetworkError({required super.errorMessage});

}