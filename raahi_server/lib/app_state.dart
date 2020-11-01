import 'package:chopper/chopper.dart';
import 'package:raahi_server/models.dart';
import 'api_service.dart';

class AppState {
  final ApiService apiService;
  AppState() : apiService = ApiService.create() {
    consumers = Map<String, ConsumerState>();
  }

  Map<String, ConsumerState> consumers;

  ConsumerState getState(String address) {
    if (consumers.containsKey(address)) {
      return consumers[address];
    } else {
      consumers[address] = new ConsumerState(address);
      return consumers[address];
    }
  }

  refreshState(String address) {
    if (consumers.containsKey(address)) consumers.remove(address);
    consumers[address] = new ConsumerState(address);
    return consumers[address];
  }

  Future<List<GeoCodeFeature>> query(
      String address, String query, String lat, String lon) async {
    refreshState(address);
    try {
      Response<GeoCodeResponse> response =
          await apiService.getGeoCode(query, lat, lon);
      if (response.isSuccessful) {
        getState(address).lastQueryResults = response.body.features.toList();
        return response.body.features.toList();
      } else {
        return Future.error('Error: ${response.statusCode}');
      }
    } catch (e) {
      return Future.error(e.message);
    }
  }

  void setDestination(String address, int queryResultIndex) {
    getState(address).destinationCoords = getState(address)
        .lastQueryResults[queryResultIndex]
        .geometry
        .coordinates
        .toList();
  }

  List<List<double>> getPathPoints(String address) {
    return getState(address)
        .lastSuggestedPath
        .features
        .first
        .geometry
        .coordinates
        .map((e) => e.toList())
        .toList();
  }

  Future<List<Steps>> getpath(String address, String lat, String lon) async {
    try {
      if (!consumers.containsKey(address)) {
        return Future.error('KEY DOESNT EXIST');
      }
      if (getState(address).destinationCoords == null) {
        return Future.error('DESTINATION COORDS DONT EXIST');
      }
      String endCoords = getState(address).destinationCoords.join(',');
      Response<DirectionsResponse> response =
          await apiService.getDirections('$lon,$lat', endCoords);

      if (response.isSuccessful) {
        getState(address).lastSuggestedPath = response.body;
        return response.body.features.first.properties.segments.first.steps
            .toList();
      } else {
        return Future.error(response.statusCode);
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}

class ConsumerState {
  final String address;
  ConsumerState(this.address);
  List<GeoCodeFeature> lastQueryResults;
  List<double> destinationCoords;
  DirectionsResponse lastSuggestedPath;
}
