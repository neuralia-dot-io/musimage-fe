import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'artworks_record.g.dart';

abstract class ArtworksRecord
    implements Built<ArtworksRecord, ArtworksRecordBuilder> {
  static Serializer<ArtworksRecord> get serializer =>
      _$artworksRecordSerializer;

  String? get generatedPrompt;

  bool? get isAudio;

  String? get style;

  String? get threshold;

  String? get timestamp;

  String? get uid;

  String? get artworkUrl;

  String? get artworkUrlString;

  String? get musicUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ArtworksRecordBuilder builder) => builder
    ..generatedPrompt = ''
    ..isAudio = false
    ..style = ''
    ..threshold = ''
    ..timestamp = ''
    ..uid = ''
    ..artworkUrl = ''
    ..artworkUrlString = ''
    ..musicUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('artworks');

  static Stream<ArtworksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ArtworksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ArtworksRecord._();
  factory ArtworksRecord([void Function(ArtworksRecordBuilder) updates]) =
      _$ArtworksRecord;

  static ArtworksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createArtworksRecordData({
  String? generatedPrompt,
  bool? isAudio,
  String? style,
  String? threshold,
  String? timestamp,
  String? uid,
  String? artworkUrl,
  String? artworkUrlString,
  String? musicUrl,
}) {
  final firestoreData = serializers.toFirestore(
    ArtworksRecord.serializer,
    ArtworksRecord(
      (a) => a
        ..generatedPrompt = generatedPrompt
        ..isAudio = isAudio
        ..style = style
        ..threshold = threshold
        ..timestamp = timestamp
        ..uid = uid
        ..artworkUrl = artworkUrl
        ..artworkUrlString = artworkUrlString
        ..musicUrl = musicUrl,
    ),
  );

  return firestoreData;
}
