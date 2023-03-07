import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cryptolist_record.g.dart';

abstract class CryptolistRecord
    implements Built<CryptolistRecord, CryptolistRecordBuilder> {
  static Serializer<CryptolistRecord> get serializer =>
      _$cryptolistRecordSerializer;

  String? get name;

  double? get price;

  int? get quantity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CryptolistRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cryptolist');

  static Stream<CryptolistRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CryptolistRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CryptolistRecord._();
  factory CryptolistRecord([void Function(CryptolistRecordBuilder) updates]) =
      _$CryptolistRecord;

  static CryptolistRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCryptolistRecordData({
  String? name,
  double? price,
  int? quantity,
}) {
  final firestoreData = serializers.toFirestore(
    CryptolistRecord.serializer,
    CryptolistRecord(
      (c) => c
        ..name = name
        ..price = price
        ..quantity = quantity,
    ),
  );

  return firestoreData;
}
