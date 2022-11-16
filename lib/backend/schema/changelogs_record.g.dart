// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changelogs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChangelogsRecord> _$changelogsRecordSerializer =
    new _$ChangelogsRecordSerializer();

class _$ChangelogsRecordSerializer
    implements StructuredSerializer<ChangelogsRecord> {
  @override
  final Iterable<Type> types = const [ChangelogsRecord, _$ChangelogsRecord];
  @override
  final String wireName = 'ChangelogsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChangelogsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.appVersion;
    if (value != null) {
      result
        ..add('appVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.changelogText;
    if (value != null) {
      result
        ..add('changelogText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ChangelogsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChangelogsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appVersion':
          result.appVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'changelogText':
          result.changelogText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ChangelogsRecord extends ChangelogsRecord {
  @override
  final String? appVersion;
  @override
  final String? changelogText;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChangelogsRecord(
          [void Function(ChangelogsRecordBuilder)? updates]) =>
      (new ChangelogsRecordBuilder()..update(updates))._build();

  _$ChangelogsRecord._({this.appVersion, this.changelogText, this.ffRef})
      : super._();

  @override
  ChangelogsRecord rebuild(void Function(ChangelogsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangelogsRecordBuilder toBuilder() =>
      new ChangelogsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangelogsRecord &&
        appVersion == other.appVersion &&
        changelogText == other.changelogText &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, appVersion.hashCode), changelogText.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangelogsRecord')
          ..add('appVersion', appVersion)
          ..add('changelogText', changelogText)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChangelogsRecordBuilder
    implements Builder<ChangelogsRecord, ChangelogsRecordBuilder> {
  _$ChangelogsRecord? _$v;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  String? _changelogText;
  String? get changelogText => _$this._changelogText;
  set changelogText(String? changelogText) =>
      _$this._changelogText = changelogText;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChangelogsRecordBuilder() {
    ChangelogsRecord._initializeBuilder(this);
  }

  ChangelogsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appVersion = $v.appVersion;
      _changelogText = $v.changelogText;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangelogsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangelogsRecord;
  }

  @override
  void update(void Function(ChangelogsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangelogsRecord build() => _build();

  _$ChangelogsRecord _build() {
    final _$result = _$v ??
        new _$ChangelogsRecord._(
            appVersion: appVersion, changelogText: changelogText, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
