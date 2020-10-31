import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: 'directions/driving-car')
abstract class ApiService extends ChopperService {
  @Get()
  Future<Response> getDirections(@Query('api_key') String apiKey,
      @Query('start') String start, @Query('end') String end);

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://api.openrouteservice.org/v2/',
        services: [_$ApiService()],
        converter: JsonConverter());
    return _$ApiService(client);
  }
}
