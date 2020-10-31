import 'package:chopper/chopper.dart';
import 'package:raahi_server/built_value_converter.dart';
import 'package:raahi_server/key.dart';
import 'package:raahi_server/models.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: 'directions/driving-car')
abstract class ApiService extends ChopperService {
  @Get()
  Future<Response<DirectionsResponse>> getDirections(@Query('api_key') String apiKey,
      @Query('start') String start, @Query('end') String end);

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://api.openrouteservice.org/v2/',
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
  params['apiKey'] = key;
  return req.replace(parameters: params);
}
