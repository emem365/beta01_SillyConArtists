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
  Geometry get geometry;

  Feature._();

  factory Feature([updates(FeatureBuilder b)]) = _$Feature;

  static Serializer<Feature> get serializer => _$featureSerializer;
}

abstract class Geometry implements Built<Geometry, GeometryBuilder> {
  
  BuiltList<BuiltList<double>> get coordinates;

  Geometry._();

  factory Geometry([updates(GeometryBuilder b)]) = _$Geometry;

  static Serializer<Geometry> get serializer => _$geometrySerializer;
}


abstract class Property implements Built<Property, PropertyBuilder> {
  
  BuiltList<Segment> get segments;
  
  Property._();

  factory Property([updates(PropertyBuilder b)]) = _$Property;

  static Serializer<Property> get serializer => _$propertySerializer;
}

abstract class Segment implements Built<Segment, SegmentBuilder> {
  
  BuiltList<Steps> get steps;  
  Segment._();

  factory Segment([updates(SegmentBuilder b)]) = _$Segment;

  static Serializer<Segment> get serializer => _$segmentSerializer;
}

abstract class Steps implements Built<Steps, StepsBuilder> {

  double get distance;
  double get duration;
  int get type;
  String get instruction;
  String get name;
  BuiltList<int> get wayPoints;

  
  Steps._();

  factory Steps([updates(StepsBuilder b)]) = _$Steps;

  static Serializer<Steps> get serializer => _$stepsSerializer;
}

abstract class GeoCodeResponse implements Built<GeoCodeResponse, GeoCodeResponseBuilder>{

  BuiltList<GeoCodeFeature> get features;

   GeoCodeResponse._();

  factory GeoCodeResponse([updates(GeoCodeResponseBuilder b)]) = _$GeoCodeResponse;

  static Serializer<GeoCodeResponse> get serializer => _$geoCodeResponseSerializer;

}

abstract class GeoCodeFeature implements Built<GeoCodeFeature, GeoCodeFeatureBuilder> {
  
  GeoCodeProperties get properties;
  GeoCodeGeometry get geometry;

  GeoCodeFeature._();

  factory GeoCodeFeature([updates(GeoCodeFeatureBuilder b)]) = _$GeoCodeFeature;

  static Serializer<GeoCodeFeature> get serializer => _$geoCodeFeatureSerializer;
}

abstract class GeoCodeGeometry implements Built<GeoCodeGeometry, GeoCodeGeometryBuilder> {
  
  BuiltList<double> get coordinates;

  GeoCodeGeometry._();

  factory GeoCodeGeometry([updates(GeoCodeGeometryBuilder b)]) = _$GeoCodeGeometry;

  static Serializer<GeoCodeGeometry> get serializer => _$geoCodeGeometrySerializer;
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
