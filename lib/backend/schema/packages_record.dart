import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'packages_record.g.dart';

abstract class PackagesRecord
    implements Built<PackagesRecord, PackagesRecordBuilder> {
  static Serializer<PackagesRecord> get serializer =>
      _$packagesRecordSerializer;

  String? get name;

  double? get price;

  int? get quantity;

  DocumentReference? get userwhoavail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PackagesRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('packages');

  static Stream<PackagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PackagesRecord._();
  factory PackagesRecord([void Function(PackagesRecordBuilder) updates]) =
      _$PackagesRecord;

  static PackagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPackagesRecordData({
  String? name,
  double? price,
  int? quantity,
  DocumentReference? userwhoavail,
}) {
  final firestoreData = serializers.toFirestore(
    PackagesRecord.serializer,
    PackagesRecord(
      (p) => p
        ..name = name
        ..price = price
        ..quantity = quantity
        ..userwhoavail = userwhoavail,
    ),
  );

  return firestoreData;
}
