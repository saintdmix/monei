// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'schedules_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SchedulesApiService extends SchedulesApiService {
  _$SchedulesApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SchedulesApiService;

  @override
  Future<Response<dynamic>> createScheduledPayment(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/api/v1/schedules');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllScheduledPayments() {
    final Uri $url = Uri.parse('/api/v1/schedules');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAScheduledPayment(String id) {
    final Uri $url = Uri.parse('/api/v1/schedules/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateAScheduledPayment(
    String id,
    Map<String, dynamic> body,
  ) {
    final Uri $url = Uri.parse('/api/v1/schedules/${id}');
    final $body = body;
    final Request $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> cancelAScheduledPayment(String id) {
    final Uri $url = Uri.parse('/api/v1/schedules/${id}');
    final Request $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
