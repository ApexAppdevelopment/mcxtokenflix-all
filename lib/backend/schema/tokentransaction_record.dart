import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tokentransaction_record.g.dart';

abstract class TokentransactionRecord
    implements Built<TokentransactionRecord, TokentransactionRecordBuilder> {
  static Serializer<TokentransactionRecord> get serializer =>
      _$tokentransactionRecordSerializer;

  String? get name;

  double? get amount;

  String? get status;

  double? get tax;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'vendor_name')
  String? get vendorName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TokentransactionRecordBuilder builder) =>
      builder
        ..name = ''
        ..amount = 0.0
        ..status = ''
        ..tax = 0.0
        ..vendorName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tokentransaction');

  static Stream<TokentransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TokentransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TokentransactionRecord._();
  factory TokentransactionRecord(
          [void Function(TokentransactionRecordBuilder) updates]) =
      _$TokentransactionRecord;

  static TokentransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTokentransactionRecordData({
  String? name,
  double? amount,
  String? status,
  double? tax,
  DateTime? createdAt,
  String? vendorName,
}) {
  final firestoreData = serializers.toFirestore(
    TokentransactionRecord.serializer,
    TokentransactionRecord(
      (t) => t
        ..name = name
        ..amount = amount
        ..status = status
        ..tax = tax
        ..createdAt = createdAt
        ..vendorName = vendorName,
    ),
  );

  return firestoreData;
}
