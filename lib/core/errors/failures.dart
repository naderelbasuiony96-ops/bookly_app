import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With ApiService ');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With ApiService ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With ApiService ');
      case DioExceptionType.badCertificate:
        return ServerFailure(
          'Bad Certificate: The server certificate is not trusted',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiService was canseld');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SoketException')) {
          return ServerFailure('No InterNet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('You request not found, Please try later! ');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later!');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
