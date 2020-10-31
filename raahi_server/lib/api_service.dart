import 'package:chopper/chopper.dart';
import 'package:raahi_server/built_value_converter.dart';
import 'package:raahi_server/key.dart';
import 'package:raahi_server/models.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Get(path: 'v2/directions/driving-car')
  Future<Response<DirectionsResponse>> getDirections(
      @Query('start') String start, @Query('end') String end);

  @Get(path: 'geocode/search')
  Future<Response<GeoCodeResponse>> getGeoCode(
      @Query('text') String text,
      @Query('focus.point.lat') String latitude,
      @Query('focus.point.lon') String longitude);

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://api.openrouteservice.org/',
      services: [_$ApiService()],
      converter: BuiltValueConverter(),
      interceptors: [
        addApiKeyInterceptor,
      ],
    );
    return _$ApiService(client);
  }
}

Request addApiKeyInterceptor(Request req) {
  final params = req.parameters;
  params['api_key'] = key;
  return req.replace(parameters: params);
}
