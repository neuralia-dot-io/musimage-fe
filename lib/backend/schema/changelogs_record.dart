import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'changelogs_record.g.dart';

abstract class ChangelogsRecord
    implements Built<ChangelogsRecord, ChangelogsRecordBuilder> {
  static Serializer<ChangelogsRecord> get serializer =>
      _$changelogsRecordSerializer;

  String? get appVersion;

  String? get changelogText;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChangelogsRecordBuilder builder) => builder
    ..appVersion = ''
    ..changelogText = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('changelogs');

  static Stream<ChangelogsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChangelogsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChangelogsRecord._();
  factory ChangelogsRecord([void Function(ChangelogsRecordBuilder) updates]) =
      _$ChangelogsRecord;

  static ChangelogsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChangelogsRecordData({
  String? appVersion,
  String? changelogText,
}) {
  final firestoreData = serializers.toFirestore(
    ChangelogsRecord.serializer,
    ChangelogsRecord(
      (c) => c
        ..appVersion = appVersion
        ..changelogText = changelogText,
    ),
  );

  return firestoreData;
}
