import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:raahi_server/models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  DirectionsResponse,
  Feature,
  Property,
  Segment,
  Step,
  GeoCodeResponse,
  GeoCodeFeature,
  GeoCodeProperties,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
