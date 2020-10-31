// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DirectionsResponse> _$directionsResponseSerializer =
    new _$DirectionsResponseSerializer();
Serializer<Feature> _$featureSerializer = new _$FeatureSerializer();
Serializer<Property> _$propertySerializer = new _$PropertySerializer();
Serializer<Segment> _$segmentSerializer = new _$SegmentSerializer();
Serializer<Step> _$stepSerializer = new _$StepSerializer();
Serializer<GeoCodeResponse> _$geoCodeResponseSerializer =
    new _$GeoCodeResponseSerializer();
Serializer<GeoCodeFeature> _$geoCodeFeatureSerializer =
    new _$GeoCodeFeatureSerializer();
Serializer<GeoCodeProperties> _$geoCodePropertiesSerializer =
    new _$GeoCodePropertiesSerializer();

class _$DirectionsResponseSerializer
    implements StructuredSerializer<DirectionsResponse> {
  @override
  final Iterable<Type> types = const [DirectionsResponse, _$DirectionsResponse];
  @override
  final String wireName = 'DirectionsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, DirectionsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'features',
      serializers.serialize(object.features,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Feature)])),
    ];

    return result;
  }

  @override
  DirectionsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DirectionsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'features':
          result.features.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Feature)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FeatureSerializer implements StructuredSerializer<Feature> {
  @override
  final Iterable<Type> types = const [Feature, _$Feature];
  @override
  final String wireName = 'Feature';

  @override
  Iterable<Object> serialize(Serializers serializers, Feature object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'properties',
      serializers.serialize(object.properties,
          specifiedType: const FullType(Property)),
    ];

    return result;
  }

  @override
  Feature deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeatureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'properties':
          result.properties.replace(serializers.deserialize(value,
              specifiedType: const FullType(Property)) as Property);
          break;
      }
    }

    return result.build();
  }
}

class _$PropertySerializer implements StructuredSerializer<Property> {
  @override
  final Iterable<Type> types = const [Property, _$Property];
  @override
  final String wireName = 'Property';

  @override
  Iterable<Object> serialize(Serializers serializers, Property object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'segments',
      serializers.serialize(object.segments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Segment)])),
    ];

    return result;
  }

  @override
  Property deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'segments':
          result.segments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Segment)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SegmentSerializer implements StructuredSerializer<Segment> {
  @override
  final Iterable<Type> types = const [Segment, _$Segment];
  @override
  final String wireName = 'Segment';

  @override
  Iterable<Object> serialize(Serializers serializers, Segment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'steps',
      serializers.serialize(object.steps,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Step)])),
    ];

    return result;
  }

  @override
  Segment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SegmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'steps':
          result.steps.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Step)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$StepSerializer implements StructuredSerializer<Step> {
  @override
  final Iterable<Type> types = const [Step, _$Step];
  @override
  final String wireName = 'Step';

  @override
  Iterable<Object> serialize(Serializers serializers, Step object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'distance',
      serializers.serialize(object.distance,
          specifiedType: const FullType(double)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(double)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'instruction',
      serializers.serialize(object.instruction,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'wayPoints',
      serializers.serialize(object.wayPoints,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  Step deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StepBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'instruction':
          result.instruction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wayPoints':
          result.wayPoints.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GeoCodeResponseSerializer
    implements StructuredSerializer<GeoCodeResponse> {
  @override
  final Iterable<Type> types = const [GeoCodeResponse, _$GeoCodeResponse];
  @override
  final String wireName = 'GeoCodeResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoCodeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'features',
      serializers.serialize(object.features,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GeoCodeFeature)])),
    ];

    return result;
  }

  @override
  GeoCodeResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoCodeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'features':
          result.features.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GeoCodeFeature)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GeoCodeFeatureSerializer
    implements StructuredSerializer<GeoCodeFeature> {
  @override
  final Iterable<Type> types = const [GeoCodeFeature, _$GeoCodeFeature];
  @override
  final String wireName = 'GeoCodeFeature';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoCodeFeature object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'properties',
      serializers.serialize(object.properties,
          specifiedType: const FullType(GeoCodeProperties)),
    ];

    return result;
  }

  @override
  GeoCodeFeature deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoCodeFeatureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'properties':
          result.properties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GeoCodeProperties))
              as GeoCodeProperties);
          break;
      }
    }

    return result.build();
  }
}

class _$GeoCodePropertiesSerializer
    implements StructuredSerializer<GeoCodeProperties> {
  @override
  final Iterable<Type> types = const [GeoCodeProperties, _$GeoCodeProperties];
  @override
  final String wireName = 'GeoCodeProperties';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoCodeProperties object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'gid',
      serializers.serialize(object.gid, specifiedType: const FullType(String)),
      'layer',
      serializers.serialize(object.layer,
          specifiedType: const FullType(String)),
      'source',
      serializers.serialize(object.source,
          specifiedType: const FullType(String)),
      'source-id',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'confidence',
      serializers.serialize(object.confidence,
          specifiedType: const FullType(int)),
      'match-type',
      serializers.serialize(object.matchType,
          specifiedType: const FullType(String)),
      'accuracy',
      serializers.serialize(object.accuracy,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'country-gid',
      serializers.serialize(object.countryGid,
          specifiedType: const FullType(String)),
      'country-a',
      serializers.serialize(object.countryA,
          specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'region-gid',
      serializers.serialize(object.regionGid,
          specifiedType: const FullType(String)),
      'region-a',
      serializers.serialize(object.regionA,
          specifiedType: const FullType(String)),
      'county',
      serializers.serialize(object.county,
          specifiedType: const FullType(String)),
      'county-gid',
      serializers.serialize(object.countyGid,
          specifiedType: const FullType(String)),
      'county-a',
      serializers.serialize(object.countyA,
          specifiedType: const FullType(String)),
      'continent',
      serializers.serialize(object.continent,
          specifiedType: const FullType(String)),
      'continent-gid',
      serializers.serialize(object.continentGid,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GeoCodeProperties deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoCodePropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gid':
          result.gid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'layer':
          result.layer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source-id':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confidence':
          result.confidence = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'match-type':
          result.matchType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accuracy':
          result.accuracy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country-gid':
          result.countryGid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country-a':
          result.countryA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region-gid':
          result.regionGid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region-a':
          result.regionA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'county':
          result.county = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'county-gid':
          result.countyGid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'county-a':
          result.countyA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'continent':
          result.continent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'continent-gid':
          result.continentGid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DirectionsResponse extends DirectionsResponse {
  @override
  final BuiltList<Feature> features;

  factory _$DirectionsResponse(
          [void Function(DirectionsResponseBuilder) updates]) =>
      (new DirectionsResponseBuilder()..update(updates)).build();

  _$DirectionsResponse._({this.features}) : super._() {
    if (features == null) {
      throw new BuiltValueNullFieldError('DirectionsResponse', 'features');
    }
  }

  @override
  DirectionsResponse rebuild(
          void Function(DirectionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectionsResponseBuilder toBuilder() =>
      new DirectionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectionsResponse && features == other.features;
  }

  @override
  int get hashCode {
    return $jf($jc(0, features.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DirectionsResponse')
          ..add('features', features))
        .toString();
  }
}

class DirectionsResponseBuilder
    implements Builder<DirectionsResponse, DirectionsResponseBuilder> {
  _$DirectionsResponse _$v;

  ListBuilder<Feature> _features;
  ListBuilder<Feature> get features =>
      _$this._features ??= new ListBuilder<Feature>();
  set features(ListBuilder<Feature> features) => _$this._features = features;

  DirectionsResponseBuilder();

  DirectionsResponseBuilder get _$this {
    if (_$v != null) {
      _features = _$v.features?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectionsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DirectionsResponse;
  }

  @override
  void update(void Function(DirectionsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DirectionsResponse build() {
    _$DirectionsResponse _$result;
    try {
      _$result = _$v ?? new _$DirectionsResponse._(features: features.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DirectionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Feature extends Feature {
  @override
  final Property properties;

  factory _$Feature([void Function(FeatureBuilder) updates]) =>
      (new FeatureBuilder()..update(updates)).build();

  _$Feature._({this.properties}) : super._() {
    if (properties == null) {
      throw new BuiltValueNullFieldError('Feature', 'properties');
    }
  }

  @override
  Feature rebuild(void Function(FeatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureBuilder toBuilder() => new FeatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feature && properties == other.properties;
  }

  @override
  int get hashCode {
    return $jf($jc(0, properties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feature')
          ..add('properties', properties))
        .toString();
  }
}

class FeatureBuilder implements Builder<Feature, FeatureBuilder> {
  _$Feature _$v;

  PropertyBuilder _properties;
  PropertyBuilder get properties =>
      _$this._properties ??= new PropertyBuilder();
  set properties(PropertyBuilder properties) => _$this._properties = properties;

  FeatureBuilder();

  FeatureBuilder get _$this {
    if (_$v != null) {
      _properties = _$v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feature other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feature;
  }

  @override
  void update(void Function(FeatureBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Feature build() {
    _$Feature _$result;
    try {
      _$result = _$v ?? new _$Feature._(properties: properties.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Feature', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Property extends Property {
  @override
  final BuiltList<Segment> segments;

  factory _$Property([void Function(PropertyBuilder) updates]) =>
      (new PropertyBuilder()..update(updates)).build();

  _$Property._({this.segments}) : super._() {
    if (segments == null) {
      throw new BuiltValueNullFieldError('Property', 'segments');
    }
  }

  @override
  Property rebuild(void Function(PropertyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyBuilder toBuilder() => new PropertyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Property && segments == other.segments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, segments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Property')..add('segments', segments))
        .toString();
  }
}

class PropertyBuilder implements Builder<Property, PropertyBuilder> {
  _$Property _$v;

  ListBuilder<Segment> _segments;
  ListBuilder<Segment> get segments =>
      _$this._segments ??= new ListBuilder<Segment>();
  set segments(ListBuilder<Segment> segments) => _$this._segments = segments;

  PropertyBuilder();

  PropertyBuilder get _$this {
    if (_$v != null) {
      _segments = _$v.segments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Property other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Property;
  }

  @override
  void update(void Function(PropertyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Property build() {
    _$Property _$result;
    try {
      _$result = _$v ?? new _$Property._(segments: segments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'segments';
        segments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Property', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Segment extends Segment {
  @override
  final BuiltList<Step> steps;

  factory _$Segment([void Function(SegmentBuilder) updates]) =>
      (new SegmentBuilder()..update(updates)).build();

  _$Segment._({this.steps}) : super._() {
    if (steps == null) {
      throw new BuiltValueNullFieldError('Segment', 'steps');
    }
  }

  @override
  Segment rebuild(void Function(SegmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SegmentBuilder toBuilder() => new SegmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Segment && steps == other.steps;
  }

  @override
  int get hashCode {
    return $jf($jc(0, steps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Segment')..add('steps', steps))
        .toString();
  }
}

class SegmentBuilder implements Builder<Segment, SegmentBuilder> {
  _$Segment _$v;

  ListBuilder<Step> _steps;
  ListBuilder<Step> get steps => _$this._steps ??= new ListBuilder<Step>();
  set steps(ListBuilder<Step> steps) => _$this._steps = steps;

  SegmentBuilder();

  SegmentBuilder get _$this {
    if (_$v != null) {
      _steps = _$v.steps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Segment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Segment;
  }

  @override
  void update(void Function(SegmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Segment build() {
    _$Segment _$result;
    try {
      _$result = _$v ?? new _$Segment._(steps: steps.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'steps';
        steps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Segment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Step extends Step {
  @override
  final double distance;
  @override
  final double duration;
  @override
  final int type;
  @override
  final String instruction;
  @override
  final String name;
  @override
  final BuiltList<int> wayPoints;

  factory _$Step([void Function(StepBuilder) updates]) =>
      (new StepBuilder()..update(updates)).build();

  _$Step._(
      {this.distance,
      this.duration,
      this.type,
      this.instruction,
      this.name,
      this.wayPoints})
      : super._() {
    if (distance == null) {
      throw new BuiltValueNullFieldError('Step', 'distance');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('Step', 'duration');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Step', 'type');
    }
    if (instruction == null) {
      throw new BuiltValueNullFieldError('Step', 'instruction');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Step', 'name');
    }
    if (wayPoints == null) {
      throw new BuiltValueNullFieldError('Step', 'wayPoints');
    }
  }

  @override
  Step rebuild(void Function(StepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepBuilder toBuilder() => new StepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Step &&
        distance == other.distance &&
        duration == other.duration &&
        type == other.type &&
        instruction == other.instruction &&
        name == other.name &&
        wayPoints == other.wayPoints;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, distance.hashCode), duration.hashCode),
                    type.hashCode),
                instruction.hashCode),
            name.hashCode),
        wayPoints.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Step')
          ..add('distance', distance)
          ..add('duration', duration)
          ..add('type', type)
          ..add('instruction', instruction)
          ..add('name', name)
          ..add('wayPoints', wayPoints))
        .toString();
  }
}

class StepBuilder implements Builder<Step, StepBuilder> {
  _$Step _$v;

  double _distance;
  double get distance => _$this._distance;
  set distance(double distance) => _$this._distance = distance;

  double _duration;
  double get duration => _$this._duration;
  set duration(double duration) => _$this._duration = duration;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _instruction;
  String get instruction => _$this._instruction;
  set instruction(String instruction) => _$this._instruction = instruction;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<int> _wayPoints;
  ListBuilder<int> get wayPoints =>
      _$this._wayPoints ??= new ListBuilder<int>();
  set wayPoints(ListBuilder<int> wayPoints) => _$this._wayPoints = wayPoints;

  StepBuilder();

  StepBuilder get _$this {
    if (_$v != null) {
      _distance = _$v.distance;
      _duration = _$v.duration;
      _type = _$v.type;
      _instruction = _$v.instruction;
      _name = _$v.name;
      _wayPoints = _$v.wayPoints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Step other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Step;
  }

  @override
  void update(void Function(StepBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Step build() {
    _$Step _$result;
    try {
      _$result = _$v ??
          new _$Step._(
              distance: distance,
              duration: duration,
              type: type,
              instruction: instruction,
              name: name,
              wayPoints: wayPoints.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'wayPoints';
        wayPoints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Step', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GeoCodeResponse extends GeoCodeResponse {
  @override
  final BuiltList<GeoCodeFeature> features;

  factory _$GeoCodeResponse([void Function(GeoCodeResponseBuilder) updates]) =>
      (new GeoCodeResponseBuilder()..update(updates)).build();

  _$GeoCodeResponse._({this.features}) : super._() {
    if (features == null) {
      throw new BuiltValueNullFieldError('GeoCodeResponse', 'features');
    }
  }

  @override
  GeoCodeResponse rebuild(void Function(GeoCodeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoCodeResponseBuilder toBuilder() =>
      new GeoCodeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoCodeResponse && features == other.features;
  }

  @override
  int get hashCode {
    return $jf($jc(0, features.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoCodeResponse')
          ..add('features', features))
        .toString();
  }
}

class GeoCodeResponseBuilder
    implements Builder<GeoCodeResponse, GeoCodeResponseBuilder> {
  _$GeoCodeResponse _$v;

  ListBuilder<GeoCodeFeature> _features;
  ListBuilder<GeoCodeFeature> get features =>
      _$this._features ??= new ListBuilder<GeoCodeFeature>();
  set features(ListBuilder<GeoCodeFeature> features) =>
      _$this._features = features;

  GeoCodeResponseBuilder();

  GeoCodeResponseBuilder get _$this {
    if (_$v != null) {
      _features = _$v.features?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoCodeResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoCodeResponse;
  }

  @override
  void update(void Function(GeoCodeResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoCodeResponse build() {
    _$GeoCodeResponse _$result;
    try {
      _$result = _$v ?? new _$GeoCodeResponse._(features: features.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GeoCodeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GeoCodeFeature extends GeoCodeFeature {
  @override
  final GeoCodeProperties properties;

  factory _$GeoCodeFeature([void Function(GeoCodeFeatureBuilder) updates]) =>
      (new GeoCodeFeatureBuilder()..update(updates)).build();

  _$GeoCodeFeature._({this.properties}) : super._() {
    if (properties == null) {
      throw new BuiltValueNullFieldError('GeoCodeFeature', 'properties');
    }
  }

  @override
  GeoCodeFeature rebuild(void Function(GeoCodeFeatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoCodeFeatureBuilder toBuilder() =>
      new GeoCodeFeatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoCodeFeature && properties == other.properties;
  }

  @override
  int get hashCode {
    return $jf($jc(0, properties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoCodeFeature')
          ..add('properties', properties))
        .toString();
  }
}

class GeoCodeFeatureBuilder
    implements Builder<GeoCodeFeature, GeoCodeFeatureBuilder> {
  _$GeoCodeFeature _$v;

  GeoCodePropertiesBuilder _properties;
  GeoCodePropertiesBuilder get properties =>
      _$this._properties ??= new GeoCodePropertiesBuilder();
  set properties(GeoCodePropertiesBuilder properties) =>
      _$this._properties = properties;

  GeoCodeFeatureBuilder();

  GeoCodeFeatureBuilder get _$this {
    if (_$v != null) {
      _properties = _$v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoCodeFeature other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoCodeFeature;
  }

  @override
  void update(void Function(GeoCodeFeatureBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoCodeFeature build() {
    _$GeoCodeFeature _$result;
    try {
      _$result = _$v ?? new _$GeoCodeFeature._(properties: properties.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GeoCodeFeature', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GeoCodeProperties extends GeoCodeProperties {
  @override
  final String id;
  @override
  final String gid;
  @override
  final String layer;
  @override
  final String source;
  @override
  final String sourceId;
  @override
  final String name;
  @override
  final int confidence;
  @override
  final String matchType;
  @override
  final String accuracy;
  @override
  final String country;
  @override
  final String countryGid;
  @override
  final String countryA;
  @override
  final String region;
  @override
  final String regionGid;
  @override
  final String regionA;
  @override
  final String county;
  @override
  final String countyGid;
  @override
  final String countyA;
  @override
  final String continent;
  @override
  final String continentGid;
  @override
  final String label;

  factory _$GeoCodeProperties(
          [void Function(GeoCodePropertiesBuilder) updates]) =>
      (new GeoCodePropertiesBuilder()..update(updates)).build();

  _$GeoCodeProperties._(
      {this.id,
      this.gid,
      this.layer,
      this.source,
      this.sourceId,
      this.name,
      this.confidence,
      this.matchType,
      this.accuracy,
      this.country,
      this.countryGid,
      this.countryA,
      this.region,
      this.regionGid,
      this.regionA,
      this.county,
      this.countyGid,
      this.countyA,
      this.continent,
      this.continentGid,
      this.label})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'id');
    }
    if (gid == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'gid');
    }
    if (layer == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'layer');
    }
    if (source == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'source');
    }
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'sourceId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'name');
    }
    if (confidence == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'confidence');
    }
    if (matchType == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'matchType');
    }
    if (accuracy == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'accuracy');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'country');
    }
    if (countryGid == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'countryGid');
    }
    if (countryA == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'countryA');
    }
    if (region == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'region');
    }
    if (regionGid == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'regionGid');
    }
    if (regionA == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'regionA');
    }
    if (county == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'county');
    }
    if (countyGid == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'countyGid');
    }
    if (countyA == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'countyA');
    }
    if (continent == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'continent');
    }
    if (continentGid == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'continentGid');
    }
    if (label == null) {
      throw new BuiltValueNullFieldError('GeoCodeProperties', 'label');
    }
  }

  @override
  GeoCodeProperties rebuild(void Function(GeoCodePropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoCodePropertiesBuilder toBuilder() =>
      new GeoCodePropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoCodeProperties &&
        id == other.id &&
        gid == other.gid &&
        layer == other.layer &&
        source == other.source &&
        sourceId == other.sourceId &&
        name == other.name &&
        confidence == other.confidence &&
        matchType == other.matchType &&
        accuracy == other.accuracy &&
        country == other.country &&
        countryGid == other.countryGid &&
        countryA == other.countryA &&
        region == other.region &&
        regionGid == other.regionGid &&
        regionA == other.regionA &&
        county == other.county &&
        countyGid == other.countyGid &&
        countyA == other.countyA &&
        continent == other.continent &&
        continentGid == other.continentGid &&
        label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, id.hashCode), gid.hashCode),
                                                                                layer.hashCode),
                                                                            source.hashCode),
                                                                        sourceId.hashCode),
                                                                    name.hashCode),
                                                                confidence.hashCode),
                                                            matchType.hashCode),
                                                        accuracy.hashCode),
                                                    country.hashCode),
                                                countryGid.hashCode),
                                            countryA.hashCode),
                                        region.hashCode),
                                    regionGid.hashCode),
                                regionA.hashCode),
                            county.hashCode),
                        countyGid.hashCode),
                    countyA.hashCode),
                continent.hashCode),
            continentGid.hashCode),
        label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoCodeProperties')
          ..add('id', id)
          ..add('gid', gid)
          ..add('layer', layer)
          ..add('source', source)
          ..add('sourceId', sourceId)
          ..add('name', name)
          ..add('confidence', confidence)
          ..add('matchType', matchType)
          ..add('accuracy', accuracy)
          ..add('country', country)
          ..add('countryGid', countryGid)
          ..add('countryA', countryA)
          ..add('region', region)
          ..add('regionGid', regionGid)
          ..add('regionA', regionA)
          ..add('county', county)
          ..add('countyGid', countyGid)
          ..add('countyA', countyA)
          ..add('continent', continent)
          ..add('continentGid', continentGid)
          ..add('label', label))
        .toString();
  }
}

class GeoCodePropertiesBuilder
    implements Builder<GeoCodeProperties, GeoCodePropertiesBuilder> {
  _$GeoCodeProperties _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _gid;
  String get gid => _$this._gid;
  set gid(String gid) => _$this._gid = gid;

  String _layer;
  String get layer => _$this._layer;
  set layer(String layer) => _$this._layer = layer;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _confidence;
  int get confidence => _$this._confidence;
  set confidence(int confidence) => _$this._confidence = confidence;

  String _matchType;
  String get matchType => _$this._matchType;
  set matchType(String matchType) => _$this._matchType = matchType;

  String _accuracy;
  String get accuracy => _$this._accuracy;
  set accuracy(String accuracy) => _$this._accuracy = accuracy;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _countryGid;
  String get countryGid => _$this._countryGid;
  set countryGid(String countryGid) => _$this._countryGid = countryGid;

  String _countryA;
  String get countryA => _$this._countryA;
  set countryA(String countryA) => _$this._countryA = countryA;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _regionGid;
  String get regionGid => _$this._regionGid;
  set regionGid(String regionGid) => _$this._regionGid = regionGid;

  String _regionA;
  String get regionA => _$this._regionA;
  set regionA(String regionA) => _$this._regionA = regionA;

  String _county;
  String get county => _$this._county;
  set county(String county) => _$this._county = county;

  String _countyGid;
  String get countyGid => _$this._countyGid;
  set countyGid(String countyGid) => _$this._countyGid = countyGid;

  String _countyA;
  String get countyA => _$this._countyA;
  set countyA(String countyA) => _$this._countyA = countyA;

  String _continent;
  String get continent => _$this._continent;
  set continent(String continent) => _$this._continent = continent;

  String _continentGid;
  String get continentGid => _$this._continentGid;
  set continentGid(String continentGid) => _$this._continentGid = continentGid;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  GeoCodePropertiesBuilder();

  GeoCodePropertiesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _gid = _$v.gid;
      _layer = _$v.layer;
      _source = _$v.source;
      _sourceId = _$v.sourceId;
      _name = _$v.name;
      _confidence = _$v.confidence;
      _matchType = _$v.matchType;
      _accuracy = _$v.accuracy;
      _country = _$v.country;
      _countryGid = _$v.countryGid;
      _countryA = _$v.countryA;
      _region = _$v.region;
      _regionGid = _$v.regionGid;
      _regionA = _$v.regionA;
      _county = _$v.county;
      _countyGid = _$v.countyGid;
      _countyA = _$v.countyA;
      _continent = _$v.continent;
      _continentGid = _$v.continentGid;
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoCodeProperties other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoCodeProperties;
  }

  @override
  void update(void Function(GeoCodePropertiesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoCodeProperties build() {
    final _$result = _$v ??
        new _$GeoCodeProperties._(
            id: id,
            gid: gid,
            layer: layer,
            source: source,
            sourceId: sourceId,
            name: name,
            confidence: confidence,
            matchType: matchType,
            accuracy: accuracy,
            country: country,
            countryGid: countryGid,
            countryA: countryA,
            region: region,
            regionGid: regionGid,
            regionA: regionA,
            county: county,
            countyGid: countyGid,
            countyA: countyA,
            continent: continent,
            continentGid: continentGid,
            label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
