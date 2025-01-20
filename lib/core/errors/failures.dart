import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeOut with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeOut with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeOut with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Incorrect certificate as configured by [Validate Certificate]');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request by ApiServer was canceled');

      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketExceptions')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('UnExpected error, please try again');

      case DioExceptionType.unknown:
        return ServerFailure('Oops there was an error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try later');
    } else {
      return ServerFailure('Oops there was an error, Please try again');
    }
  }
}
