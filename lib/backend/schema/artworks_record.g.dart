// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artworks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArtworksRecord> _$artworksRecordSerializer =
    new _$ArtworksRecordSerializer();

class _$ArtworksRecordSerializer
    implements StructuredSerializer<ArtworksRecord> {
  @override
  final Iterable<Type> types = const [ArtworksRecord, _$ArtworksRecord];
  @override
  final String wireName = 'ArtworksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArtworksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.generatedPrompt;
    if (value != null) {
      result
        ..add('generatedPrompt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAudio;
    if (value != null) {
      result
        ..add('isAudio')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.style;
    if (value != null) {
      result
        ..add('style')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.threshold;
    if (value != null) {
      result
        ..add('threshold')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artworkUrl;
    if (value != null) {
      result
        ..add('artworkUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artworkUrlString;
    if (value != null) {
      result
        ..add('artworkUrlString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.musicUrl;
    if (value != null) {
      result
        ..add('musicUrl')
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
  ArtworksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArtworksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'generatedPrompt':
          result.generatedPrompt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAudio':
          result.isAudio = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'style':
          result.style = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'threshold':
          result.threshold = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artworkUrl':
          result.artworkUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artworkUrlString':
          result.artworkUrlString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'musicUrl':
          result.musicUrl = serializers.deserialize(value,
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

class _$ArtworksRecord extends ArtworksRecord {
  @override
  final String? generatedPrompt;
  @override
  final bool? isAudio;
  @override
  final String? style;
  @override
  final String? threshold;
  @override
  final String? timestamp;
  @override
  final String? uid;
  @override
  final String? artworkUrl;
  @override
  final String? artworkUrlString;
  @override
  final String? musicUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ArtworksRecord([void Function(ArtworksRecordBuilder)? updates]) =>
      (new ArtworksRecordBuilder()..update(updates))._build();

  _$ArtworksRecord._(
      {this.generatedPrompt,
      this.isAudio,
      this.style,
      this.threshold,
      this.timestamp,
      this.uid,
      this.artworkUrl,
      this.artworkUrlString,
      this.musicUrl,
      this.ffRef})
      : super._();

  @override
  ArtworksRecord rebuild(void Function(ArtworksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArtworksRecordBuilder toBuilder() =>
      new ArtworksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArtworksRecord &&
        generatedPrompt == other.generatedPrompt &&
        isAudio == other.isAudio &&
        style == other.style &&
        threshold == other.threshold &&
        timestamp == other.timestamp &&
        uid == other.uid &&
        artworkUrl == other.artworkUrl &&
        artworkUrlString == other.artworkUrlString &&
        musicUrl == other.musicUrl &&
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
                                $jc(
                                    $jc($jc(0, generatedPrompt.hashCode),
                                        isAudio.hashCode),
                                    style.hashCode),
                                threshold.hashCode),
                            timestamp.hashCode),
                        uid.hashCode),
                    artworkUrl.hashCode),
                artworkUrlString.hashCode),
            musicUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArtworksRecord')
          ..add('generatedPrompt', generatedPrompt)
          ..add('isAudio', isAudio)
          ..add('style', style)
          ..add('threshold', threshold)
          ..add('timestamp', timestamp)
          ..add('uid', uid)
          ..add('artworkUrl', artworkUrl)
          ..add('artworkUrlString', artworkUrlString)
          ..add('musicUrl', musicUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ArtworksRecordBuilder
    implements Builder<ArtworksRecord, ArtworksRecordBuilder> {
  _$ArtworksRecord? _$v;

  String? _generatedPrompt;
  String? get generatedPrompt => _$this._generatedPrompt;
  set generatedPrompt(String? generatedPrompt) =>
      _$this._generatedPrompt = generatedPrompt;

  bool? _isAudio;
  bool? get isAudio => _$this._isAudio;
  set isAudio(bool? isAudio) => _$this._isAudio = isAudio;

  String? _style;
  String? get style => _$this._style;
  set style(String? style) => _$this._style = style;

  String? _threshold;
  String? get threshold => _$this._threshold;
  set threshold(String? threshold) => _$this._threshold = threshold;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _artworkUrl;
  String? get artworkUrl => _$this._artworkUrl;
  set artworkUrl(String? artworkUrl) => _$this._artworkUrl = artworkUrl;

  String? _artworkUrlString;
  String? get artworkUrlString => _$this._artworkUrlString;
  set artworkUrlString(String? artworkUrlString) =>
      _$this._artworkUrlString = artworkUrlString;

  String? _musicUrl;
  String? get musicUrl => _$this._musicUrl;
  set musicUrl(String? musicUrl) => _$this._musicUrl = musicUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ArtworksRecordBuilder() {
    ArtworksRecord._initializeBuilder(this);
  }

  ArtworksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generatedPrompt = $v.generatedPrompt;
      _isAudio = $v.isAudio;
      _style = $v.style;
      _threshold = $v.threshold;
      _timestamp = $v.timestamp;
      _uid = $v.uid;
      _artworkUrl = $v.artworkUrl;
      _artworkUrlString = $v.artworkUrlString;
      _musicUrl = $v.musicUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArtworksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArtworksRecord;
  }

  @override
  void update(void Function(ArtworksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArtworksRecord build() => _build();

  _$ArtworksRecord _build() {
    final _$result = _$v ??
        new _$ArtworksRecord._(
            generatedPrompt: generatedPrompt,
            isAudio: isAudio,
            style: style,
            threshold: threshold,
            timestamp: timestamp,
            uid: uid,
            artworkUrl: artworkUrl,
            artworkUrlString: artworkUrlString,
            musicUrl: musicUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
