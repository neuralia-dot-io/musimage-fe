// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsUsersRecord> _$notificationsUsersRecordSerializer =
    new _$NotificationsUsersRecordSerializer();

class _$NotificationsUsersRecordSerializer
    implements StructuredSerializer<NotificationsUsersRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationsUsersRecord,
    _$NotificationsUsersRecord
  ];
  @override
  final String wireName = 'NotificationsUsersRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wasRead;
    if (value != null) {
      result
        ..add('wasRead')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.artworkRef;
    if (value != null) {
      result
        ..add('artworkRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  NotificationsUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wasRead':
          result.wasRead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'artworkRef':
          result.artworkRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$NotificationsUsersRecord extends NotificationsUsersRecord {
  @override
  final String? uid;
  @override
  final DateTime? timestamp;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? wasRead;
  @override
  final int? type;
  @override
  final DocumentReference<Object?>? artworkRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationsUsersRecord(
          [void Function(NotificationsUsersRecordBuilder)? updates]) =>
      (new NotificationsUsersRecordBuilder()..update(updates))._build();

  _$NotificationsUsersRecord._(
      {this.uid,
      this.timestamp,
      this.title,
      this.description,
      this.wasRead,
      this.type,
      this.artworkRef,
      this.ffRef})
      : super._();

  @override
  NotificationsUsersRecord rebuild(
          void Function(NotificationsUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsUsersRecordBuilder toBuilder() =>
      new NotificationsUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsUsersRecord &&
        uid == other.uid &&
        timestamp == other.timestamp &&
        title == other.title &&
        description == other.description &&
        wasRead == other.wasRead &&
        type == other.type &&
        artworkRef == other.artworkRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, uid.hashCode), timestamp.hashCode),
                            title.hashCode),
                        description.hashCode),
                    wasRead.hashCode),
                type.hashCode),
            artworkRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsUsersRecord')
          ..add('uid', uid)
          ..add('timestamp', timestamp)
          ..add('title', title)
          ..add('description', description)
          ..add('wasRead', wasRead)
          ..add('type', type)
          ..add('artworkRef', artworkRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationsUsersRecordBuilder
    implements
        Builder<NotificationsUsersRecord, NotificationsUsersRecordBuilder> {
  _$NotificationsUsersRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _wasRead;
  bool? get wasRead => _$this._wasRead;
  set wasRead(bool? wasRead) => _$this._wasRead = wasRead;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  DocumentReference<Object?>? _artworkRef;
  DocumentReference<Object?>? get artworkRef => _$this._artworkRef;
  set artworkRef(DocumentReference<Object?>? artworkRef) =>
      _$this._artworkRef = artworkRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationsUsersRecordBuilder() {
    NotificationsUsersRecord._initializeBuilder(this);
  }

  NotificationsUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _timestamp = $v.timestamp;
      _title = $v.title;
      _description = $v.description;
      _wasRead = $v.wasRead;
      _type = $v.type;
      _artworkRef = $v.artworkRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsUsersRecord;
  }

  @override
  void update(void Function(NotificationsUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsUsersRecord build() => _build();

  _$NotificationsUsersRecord _build() {
    final _$result = _$v ??
        new _$NotificationsUsersRecord._(
            uid: uid,
            timestamp: timestamp,
            title: title,
            description: description,
            wasRead: wasRead,
            type: type,
            artworkRef: artworkRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
