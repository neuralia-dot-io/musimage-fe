// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConfigRecord> _$configRecordSerializer =
    new _$ConfigRecordSerializer();

class _$ConfigRecordSerializer implements StructuredSerializer<ConfigRecord> {
  @override
  final Iterable<Type> types = const [ConfigRecord, _$ConfigRecord];
  @override
  final String wireName = 'ConfigRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConfigRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tapToRecord;
    if (value != null) {
      result
        ..add('tap_to_record')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.signup;
    if (value != null) {
      result
        ..add('signup')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.maxInferencesNumber;
    if (value != null) {
      result
        ..add('max_inferences_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apkString;
    if (value != null) {
      result
        ..add('apkString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isWip;
    if (value != null) {
      result
        ..add('isWip')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.signupUrl;
    if (value != null) {
      result
        ..add('signupUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.couponCodes;
    if (value != null) {
      result
        ..add('couponCodes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ConfigRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfigRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tap_to_record':
          result.tapToRecord = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'signup':
          result.signup = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'max_inferences_number':
          result.maxInferencesNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apkString':
          result.apkString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isWip':
          result.isWip = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'signupUrl':
          result.signupUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'couponCodes':
          result.couponCodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ConfigRecord extends ConfigRecord {
  @override
  final bool? tapToRecord;
  @override
  final bool? signup;
  @override
  final int? maxInferencesNumber;
  @override
  final String? version;
  @override
  final String? apkString;
  @override
  final bool? isWip;
  @override
  final String? signupUrl;
  @override
  final BuiltList<String>? couponCodes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConfigRecord([void Function(ConfigRecordBuilder)? updates]) =>
      (new ConfigRecordBuilder()..update(updates))._build();

  _$ConfigRecord._(
      {this.tapToRecord,
      this.signup,
      this.maxInferencesNumber,
      this.version,
      this.apkString,
      this.isWip,
      this.signupUrl,
      this.couponCodes,
      this.ffRef})
      : super._();

  @override
  ConfigRecord rebuild(void Function(ConfigRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigRecordBuilder toBuilder() => new ConfigRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigRecord &&
        tapToRecord == other.tapToRecord &&
        signup == other.signup &&
        maxInferencesNumber == other.maxInferencesNumber &&
        version == other.version &&
        apkString == other.apkString &&
        isWip == other.isWip &&
        signupUrl == other.signupUrl &&
        couponCodes == other.couponCodes &&
        ffRef == other.ffRef;
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
                                $jc($jc(0, tapToRecord.hashCode),
                                    signup.hashCode),
                                maxInferencesNumber.hashCode),
                            version.hashCode),
                        apkString.hashCode),
                    isWip.hashCode),
                signupUrl.hashCode),
            couponCodes.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigRecord')
          ..add('tapToRecord', tapToRecord)
          ..add('signup', signup)
          ..add('maxInferencesNumber', maxInferencesNumber)
          ..add('version', version)
          ..add('apkString', apkString)
          ..add('isWip', isWip)
          ..add('signupUrl', signupUrl)
          ..add('couponCodes', couponCodes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConfigRecordBuilder
    implements Builder<ConfigRecord, ConfigRecordBuilder> {
  _$ConfigRecord? _$v;

  bool? _tapToRecord;
  bool? get tapToRecord => _$this._tapToRecord;
  set tapToRecord(bool? tapToRecord) => _$this._tapToRecord = tapToRecord;

  bool? _signup;
  bool? get signup => _$this._signup;
  set signup(bool? signup) => _$this._signup = signup;

  int? _maxInferencesNumber;
  int? get maxInferencesNumber => _$this._maxInferencesNumber;
  set maxInferencesNumber(int? maxInferencesNumber) =>
      _$this._maxInferencesNumber = maxInferencesNumber;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _apkString;
  String? get apkString => _$this._apkString;
  set apkString(String? apkString) => _$this._apkString = apkString;

  bool? _isWip;
  bool? get isWip => _$this._isWip;
  set isWip(bool? isWip) => _$this._isWip = isWip;

  String? _signupUrl;
  String? get signupUrl => _$this._signupUrl;
  set signupUrl(String? signupUrl) => _$this._signupUrl = signupUrl;

  ListBuilder<String>? _couponCodes;
  ListBuilder<String> get couponCodes =>
      _$this._couponCodes ??= new ListBuilder<String>();
  set couponCodes(ListBuilder<String>? couponCodes) =>
      _$this._couponCodes = couponCodes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConfigRecordBuilder() {
    ConfigRecord._initializeBuilder(this);
  }

  ConfigRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tapToRecord = $v.tapToRecord;
      _signup = $v.signup;
      _maxInferencesNumber = $v.maxInferencesNumber;
      _version = $v.version;
      _apkString = $v.apkString;
      _isWip = $v.isWip;
      _signupUrl = $v.signupUrl;
      _couponCodes = $v.couponCodes?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigRecord;
  }

  @override
  void update(void Function(ConfigRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigRecord build() => _build();

  _$ConfigRecord _build() {
    _$ConfigRecord _$result;
    try {
      _$result = _$v ??
          new _$ConfigRecord._(
              tapToRecord: tapToRecord,
              signup: signup,
              maxInferencesNumber: maxInferencesNumber,
              version: version,
              apkString: apkString,
              isWip: isWip,
              signupUrl: signupUrl,
              couponCodes: _couponCodes?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'couponCodes';
        _couponCodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfigRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
