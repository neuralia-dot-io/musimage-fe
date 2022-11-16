import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notifications_users_record.g.dart';

abstract class NotificationsUsersRecord
    implements
        Built<NotificationsUsersRecord, NotificationsUsersRecordBuilder> {
  static Serializer<NotificationsUsersRecord> get serializer =>
      _$notificationsUsersRecordSerializer;

  String? get uid;

  DateTime? get timestamp;

  String? get title;

  String? get description;

  bool? get wasRead;

  int? get type;

  DocumentReference? get artworkRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotificationsUsersRecordBuilder builder) =>
      builder
        ..uid = ''
        ..title = ''
        ..description = ''
        ..wasRead = false
        ..type = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications_users');

  static Stream<NotificationsUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationsUsersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationsUsersRecord._();
  factory NotificationsUsersRecord(
          [void Function(NotificationsUsersRecordBuilder) updates]) =
      _$NotificationsUsersRecord;

  static NotificationsUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationsUsersRecordData({
  String? uid,
  DateTime? timestamp,
  String? title,
  String? description,
  bool? wasRead,
  int? type,
  DocumentReference? artworkRef,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationsUsersRecord.serializer,
    NotificationsUsersRecord(
      (n) => n
        ..uid = uid
        ..timestamp = timestamp
        ..title = title
        ..description = description
        ..wasRead = wasRead
        ..type = type
        ..artworkRef = artworkRef,
    ),
  );

  return firestoreData;
}
