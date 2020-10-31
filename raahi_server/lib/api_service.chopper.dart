// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiService;

  Future<Response<DirectionsResponse>> getDirections(String start, String end) {
    final $url = 'v2/directions/driving-car';
    final Map<String, dynamic> $params = {'start': start, 'end': end};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<DirectionsResponse, DirectionsResponse>($request);
  }

  Future<Response<GeoCodeResponse>> getGeoCode(
      String text, String latitude, String longitude) {
    final $url = 'geocode/search';
    final Map<String, dynamic> $params = {
      'text': text,
      'focus.point.lat': latitude,
      'focus.point.lon': longitude
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<GeoCodeResponse, GeoCodeResponse>($request);
  }
}
