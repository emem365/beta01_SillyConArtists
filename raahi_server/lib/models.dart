import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models.g.dart';

abstract class DirectionsResponse implements Built<DirectionsResponse, DirectionsResponseBuilder>{

  BuiltList<Feature> get features;

   DirectionsResponse._();

  factory DirectionsResponse([updates(DirectionsResponseBuilder b)]) = _$DirectionsResponse;

  static Serializer<DirectionsResponse> get serializer => _$directionsResponseSerializer;

}

abstract class Feature implements Built<Feature, FeatureBuilder> {
  
  Property get properties;

  Feature._();

  factory Feature([updates(FeatureBuilder b)]) = _$Feature;

  static Serializer<Feature> get serializer => _$featureSerializer;
}

abstract class Property implements Built<Property, PropertyBuilder> {
  
  BuiltList<Segment> get segments;
  
  Property._();

  factory Property([updates(PropertyBuilder b)]) = _$Property;

  static Serializer<Property> get serializer => _$propertySerializer;
}

abstract class Segment implements Built<Segment, SegmentBuilder> {
  
  BuiltList<Step> get steps;  
  Segment._();

  factory Segment([updates(SegmentBuilder b)]) = _$Segment;

  static Serializer<Segment> get serializer => _$segmentSerializer;
}

abstract class Step implements Built<Step, StepBuilder> {

  double get distance;
  double get duration;
  int get type;
  String get instruction;
  String get name;
  BuiltList<int> get wayPoints;

  
  Step._();

  factory Step([updates(StepBuilder b)]) = _$Step;

  static Serializer<Step> get serializer => _$stepSerializer;
}

abstract class GeoCodeResponse implements Built<GeoCodeResponse, GeoCodeResponseBuilder>{

  BuiltList<GeoCodeFeature> get features;

   GeoCodeResponse._();

  factory GeoCodeResponse([updates(GeoCodeResponseBuilder b)]) = _$GeoCodeResponse;

  static Serializer<GeoCodeResponse> get serializer => _$geoCodeResponseSerializer;

}
abstract class GeoCodeFeature implements Built<GeoCodeFeature, GeoCodeFeatureBuilder> {
  
  GeoCodeProperties get properties;

  GeoCodeFeature._();

  factory GeoCodeFeature([updates(GeoCodeFeatureBuilder b)]) = _$GeoCodeFeature;

  static Serializer<GeoCodeFeature> get serializer => _$geoCodeFeatureSerializer;
}

abstract class GeoCodeProperties implements Built<GeoCodeProperties, GeoCodePropertiesBuilder> {
  
  String get id;
  String get gid;
  String get layer;
  String get source;
  @BuiltValueField(wireName: 'source_id')
  String get sourceId;
  String get name;
  int get confidence;
  @BuiltValueField(wireName: 'match_type')
  String get matchType;
  String get accuracy;
  String get country;
  @BuiltValueField(wireName: 'country_gid')
  String get countryGid;
  @BuiltValueField(wireName: 'country_a')
  String get countryA;
  String get region;
  @BuiltValueField(wireName: 'region_gid')
  String get regionGid;
  @BuiltValueField(wireName: 'region_a')
  String get regionA;
  String get county;
  @BuiltValueField(wireName: 'county_gid')
  String get countyGid;
  @BuiltValueField(wireName: 'county_a')
  String get countyA;
  String get continent;
  @BuiltValueField(wireName: 'continent_gid')
  String get continentGid;
  String get label;
  
  GeoCodeProperties._();

  factory GeoCodeProperties([updates(GeoCodePropertiesBuilder b)]) = _$GeoCodeProperties;

  static Serializer<GeoCodeProperties> get serializer => _$geoCodePropertiesSerializer;
}
