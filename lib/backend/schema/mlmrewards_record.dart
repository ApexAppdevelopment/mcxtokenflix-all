import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mlmrewards_record.g.dart';

abstract class MlmrewardsRecord
    implements Built<MlmrewardsRecord, MlmrewardsRecordBuilder> {
  static Serializer<MlmrewardsRecord> get serializer =>
      _$mlmrewardsRecordSerializer;

  String? get name;

  double? get amount;

  String? get status;

  double? get tax;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'vendor_name')
  String? get vendorName;

  DocumentReference? get userID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MlmrewardsRecordBuilder builder) => builder
    ..name = ''
    ..amount = 0.0
    ..status = ''
    ..tax = 0.0
    ..vendorName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mlmrewards');

  static Stream<MlmrewardsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MlmrewardsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MlmrewardsRecord._();
  factory MlmrewardsRecord([void Function(MlmrewardsRecordBuilder) updates]) =
      _$MlmrewardsRecord;

  static MlmrewardsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMlmrewardsRecordData({
  String? name,
  double? amount,
  String? status,
  double? tax,
  DateTime? createdAt,
  String? vendorName,
  DocumentReference? userID,
}) {
  final firestoreData = serializers.toFirestore(
    MlmrewardsRecord.serializer,
    MlmrewardsRecord(
      (m) => m
        ..name = name
        ..amount = amount
        ..status = status
        ..tax = tax
        ..createdAt = createdAt
        ..vendorName = vendorName
        ..userID = userID,
    ),
  );

  return firestoreData;
}
