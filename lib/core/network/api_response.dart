import 'package:chopper/chopper.dart';

/// Helper to parse the standard API response format:
/// { "statusCode": ..., "message": ..., "data": ..., "errors": ... }
class ApiResponse<T> {
  final int statusCode;
  final String message;
  final T? data;
  final Map<String, dynamic>? errors;
  final bool isSuccess;

  const ApiResponse({
    required this.statusCode,
    required this.message,
    this.data,
    this.errors,
    required this.isSuccess,
  });

  /// Parse a Chopper Response into a typed ApiResponse.
  /// [parser] converts the raw data into the desired type T.
  static ApiResponse<T> fromResponse<T>(
    Response response, {
    T Function(dynamic data)? parser,
  }) {
    if (response.isSuccessful && response.body != null) {
      final body = response.body as Map<String, dynamic>;
      final rawData = body['data'];
      return ApiResponse<T>(
        statusCode: body['statusCode'] ?? response.statusCode,
        message: body['message'] ?? 'Success',
        data: parser != null && rawData != null
            ? parser(rawData)
            : rawData as T?,
        errors: body['errors'] is Map
            ? body['errors'] as Map<String, dynamic>
            : null,
        isSuccess: true,
      );
    } else {
      String errorMsg = 'Request failed';
      try {
        if (response.body != null && response.body is Map) {
          errorMsg = (response.body as Map)['message'] ?? response.bodyString;
        } else {
          errorMsg = response.bodyString;
        }
      } catch (_) {
        errorMsg = response.bodyString;
      }
      return ApiResponse<T>(
        statusCode: response.statusCode,
        message: errorMsg,
        isSuccess: false,
      );
    }
  }
}
