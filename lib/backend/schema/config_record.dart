import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'config_record.g.dart';

abstract class ConfigRecord
    implements Built<ConfigRecord, ConfigRecordBuilder> {
  static Serializer<ConfigRecord> get serializer => _$configRecordSerializer;

  @BuiltValueField(wireName: 'tap_to_record')
  bool? get tapToRecord;

  bool? get signup;

  @BuiltValueField(wireName: 'max_inferences_number')
  int? get maxInferencesNumber;

  String? get version;

  String? get apkString;

  bool? get isWip;

  String? get signupUrl;

  BuiltList<String>? get couponCodes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ConfigRecordBuilder builder) => builder
    ..tapToRecord = false
    ..signup = false
    ..maxInferencesNumber = 0
    ..version = ''
    ..apkString = ''
    ..isWip = false
    ..signupUrl = ''
    ..couponCodes = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('config');

  static Stream<ConfigRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConfigRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConfigRecord._();
  factory ConfigRecord([void Function(ConfigRecordBuilder) updates]) =
      _$ConfigRecord;

  static ConfigRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConfigRecordData({
  bool? tapToRecord,
  bool? signup,
  int? maxInferencesNumber,
  String? version,
  String? apkString,
  bool? isWip,
  String? signupUrl,
}) {
  final firestoreData = serializers.toFirestore(
    ConfigRecord.serializer,
    ConfigRecord(
      (c) => c
        ..tapToRecord = tapToRecord
        ..signup = signup
        ..maxInferencesNumber = maxInferencesNumber
        ..version = version
        ..apkString = apkString
        ..isWip = isWip
        ..signupUrl = signupUrl
        ..couponCodes = null,
    ),
  );

  return firestoreData;
}
