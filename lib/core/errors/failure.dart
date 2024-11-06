import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
  
}

class ServerFailure extends Failure {
  
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e) 
  {
    switch (e.type)
    {
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out with Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out with Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!.statusCode!, e.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to Api was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps there was an error, please try again');

  }
}


factory ServerFailure.fromResponse(int statusCode, dynamic response) 
{
  if(statusCode == 404) {
    return ServerFailure('Your request was not found, please try later');
  } else if (statusCode == 500) {
    return ServerFailure('there is a problem with server, please try again');
  } else if (statusCode == 400 || statusCode == 401 || statusCode == 403){
    return ServerFailure(response['error']['message']);
  } else {
    return ServerFailure('There was an error , please try again');
  }
}
// class CacheFailure extends Failure {}

// class NetworkFailure extends Failure {}
} 