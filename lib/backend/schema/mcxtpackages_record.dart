import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mcxtpackages_record.g.dart';

abstract class McxtpackagesRecord
    implements Built<McxtpackagesRecord, McxtpackagesRecordBuilder> {
  static Serializer<McxtpackagesRecord> get serializer =>
      _$mcxtpackagesRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: 'on_sale')
  bool? get onSale;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  int? get quantity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(McxtpackagesRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..onSale = false
    ..salePrice = 0.0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mcxtpackages');

  static Stream<McxtpackagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<McxtpackagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  McxtpackagesRecord._();
  factory McxtpackagesRecord(
          [void Function(McxtpackagesRecordBuilder) updates]) =
      _$McxtpackagesRecord;

  static McxtpackagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMcxtpackagesRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
}) {
  final firestoreData = serializers.toFirestore(
    McxtpackagesRecord.serializer,
    McxtpackagesRecord(
      (m) => m
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..onSale = onSale
        ..salePrice = salePrice
        ..quantity = quantity,
    ),
  );

  return firestoreData;
}
